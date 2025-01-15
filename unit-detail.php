<?php
require_once 'includes/config.php';
require_once 'includes/db.php';
require_once 'includes/functions.php';

$db = Database::getInstance();

$unit_id = filter_input(INPUT_GET, 'id', FILTER_SANITIZE_NUMBER_INT);

// Birim bilgilerini getir
$unit = $db->query("SELECT * FROM units WHERE id = ?", [$unit_id])->fetch();

if (!$unit) {
    setError('Birim bulunamadı.');
    redirect('units.php');
}

// Birim görsellerini getir
$gallery = $db->query("SELECT * FROM unit_gallery WHERE unit_id = ?", [$unit_id])->fetchAll();

// Aktif eğitimleri getir
$trainings = $db->query(
    "SELECT * FROM trainings WHERE unit_id = ? AND is_active = 1 AND end_date >= CURDATE()",
    [$unit_id]
)->fetchAll();

$page_title = $unit['name'];
include 'includes/header.php';
?>

<!-- Leaflet CSS ve JS -->
<link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" />
<script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"></script>

<style>
.unit-detail-card {
    border-radius: 10px;
    box-shadow: 0 2px 15px rgba(0,0,0,0.1);
}

.gallery-img {
    height: 200px;
    object-fit: cover;
    border-radius: 8px;
    transition: transform 0.3s ease;
}

.gallery-img:hover {
    transform: scale(1.05);
}

.training-card {
    transition: transform 0.3s ease;
}

.training-card:hover {
    transform: translateY(-5px);
}

/* Harita kontrolleri için stil */
.leaflet-control-zoom a {
    background-color: rgba(255, 255, 255, 0.8) !important;
    color: #333 !important;
}

.leaflet-popup-content-wrapper {
    border-radius: 8px;
    padding: 5px;
}

.leaflet-popup-content {
    margin: 10px;
    text-align: center;
}
</style>

<div class="container my-4">
    <div class="row">
        <!-- Birim Detayları -->
        <div class="col-md-8 mb-4">
            <div class="card unit-detail-card">
                <div class="card-body">
                    <h2 class="card-title mb-4">
                        <i class="bi bi-building me-2"></i><?= htmlspecialchars($unit['name']) ?>
                    </h2>
                    
                    <div class="row mb-4">
                        <div class="col-md-6">
                            <h5><i class="bi bi-geo-alt me-2"></i>Adres</h5>
                            <p><?= nl2br(htmlspecialchars($unit['address'])) ?></p>
                        </div>
                        <div class="col-md-6">
                            <h5><i class="bi bi-clock me-2"></i>Çalışma Saatleri</h5>
                            <p><?= htmlspecialchars($unit['working_hours']) ?></p>
                        </div>
                    </div>

                    <?php if ($unit['description']): ?>
                    <div class="mb-4">
                        <h5><i class="bi bi-info-circle me-2"></i>Açıklama</h5>
                        <p><?= nl2br(htmlspecialchars($unit['description'])) ?></p>
                    </div>
                    <?php endif; ?>

                    <!-- Harita -->
                    <div class="mb-4">
                        <h5><i class="bi bi-map me-2"></i>Konum</h5>
                        <div id="map" style="height: 400px; border-radius: 8px;"></div>
                    </div>

                    <!-- Görseller -->
                    <?php if ($gallery): ?>
                    <div class="mb-4">
                        <h5><i class="bi bi-images me-2"></i>Görseller</h5>
                        <div class="row g-3">
                            <?php foreach ($gallery as $image): ?>
                            <div class="col-md-4">
                                <img src="<?= SITE_URL ?>/uploads/units/<?= $image['image_path'] ?>" 
                                     class="img-fluid gallery-img" 
                                     alt="<?= htmlspecialchars($unit['name']) ?>"
                                     onclick="showImage(this.src)">
                            </div>
                            <?php endforeach; ?>
                        </div>
                    </div>
                    <?php endif; ?>
                </div>
            </div>
        </div>

        <!-- Aktif Eğitimler -->
        <div class="col-md-4">
            <div class="card unit-detail-card">
                <div class="card-header bg-primary text-white">
                    <h5 class="mb-0">
                        <i class="bi bi-mortarboard me-2"></i>Aktif Eğitimler
                    </h5>
                </div>
                <div class="card-body">
                    <?php if ($trainings): ?>
                        <?php foreach ($trainings as $training): ?>
                        <div class="card mb-3 training-card">
                            <div class="card-body">
                                <h6 class="card-title"><?= htmlspecialchars($training['title']) ?></h6>
                                <p class="card-text small">
                                    <i class="bi bi-calendar me-1"></i>
                                    <?= date('d.m.Y', strtotime($training['start_date'])) ?> - 
                                    <?= date('d.m.Y', strtotime($training['end_date'])) ?>
                                </p>
                                <p class="card-text small">
                                    <i class="bi bi-people me-1"></i>
                                    Kapasite: <?= $training['capacity'] ?>
                                </p>
                                <a href="training-register.php?id=<?= $training['id'] ?>" 
                                   class="btn btn-primary btn-sm w-100">
                                    <i class="bi bi-pencil-square me-1"></i>Kayıt Ol
                                </a>
                            </div>
                        </div>
                        <?php endforeach; ?>
                    <?php else: ?>
                        <p class="text-muted text-center mb-0">
                            <i class="bi bi-info-circle me-1"></i>
                            Aktif eğitim bulunmuyor.
                        </p>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Görsel Önizleme Modal -->
<div class="modal fade" id="imageModal" tabindex="-1">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-body p-0">
                <button type="button" class="btn-close position-absolute end-0 top-0 m-2" 
                        data-bs-dismiss="modal"></button>
                <img src="" class="img-fluid" id="modalImage">
            </div>
        </div>
    </div>
</div>

<script>
// Harita başlatma
function initMap() {
    const lat = <?= $unit['latitude'] ?>;
    const lng = <?= $unit['longitude'] ?>;
    
    // Haritayı oluştur
    const map = L.map('map').setView([lat, lng], 20);
    
    // Google Uydu görüntüsü ekle
    L.tileLayer('http://{s}.google.com/vt/lyrs=s&x={x}&y={y}&z={z}', {
        maxZoom: 20,
        subdomains: ['mt0', 'mt1', 'mt2', 'mt3'],
        attribution: '© Google'
    }).addTo(map);

    // Marker ekle
    const marker = L.marker([lat, lng], {
        icon: L.icon({
            iconUrl: 'https://raw.githubusercontent.com/pointhi/leaflet-color-markers/master/img/marker-icon-2x-red.png',
            shadowUrl: 'https://cdnjs.cloudflare.com/ajax/libs/leaflet/1.7.1/images/marker-shadow.png',
            iconSize: [25, 41],
            iconAnchor: [12, 41],
            popupAnchor: [1, -34],
            shadowSize: [41, 41]
        })
    }).addTo(map);

    // Popup ekle
    marker.bindPopup(`
        <div class="text-center">
            <h6 class="mb-2"><?= htmlspecialchars($unit['name']) ?></h6>
            <p class="small mb-2"><?= htmlspecialchars($unit['address']) ?></p>
            <a href="https://www.google.com/maps/dir/?api=1&destination=${lat},${lng}" 
               target="_blank" class="btn btn-primary btn-sm">
                <i class="bi bi-map"></i> Yol Tarifi Al
            </a>
        </div>
    `).openPopup();
}

// Görsel önizleme fonksiyonu
function showImage(src) {
    const modal = new bootstrap.Modal(document.getElementById('imageModal'));
    document.getElementById('modalImage').src = src;
    modal.show();
}

// Haritayı başlat
initMap();
</script>

<?php include 'includes/footer.php'; ?>