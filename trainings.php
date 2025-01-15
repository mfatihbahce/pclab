<?php
require_once 'includes/config.php';
require_once 'includes/db.php';
require_once 'includes/functions.php';

$db = Database::getInstance();

// Aktif eğitimleri getir
$trainings = $db->query(
    "SELECT t.*, u.name as unit_name, u.address,
            (SELECT COUNT(*) FROM training_registrations WHERE training_id = t.id) as registered
     FROM trainings t 
     JOIN units u ON t.unit_id = u.id 
     WHERE t.is_active = 1 AND t.end_date >= CURDATE()
     ORDER BY t.start_date ASC"
)->fetchAll();

$page_title = "Eğitimler";
include 'includes/header.php';
?>

<div class="container py-5">
    <div class="row mb-4">
        <div class="col-12">
            <h1 class="h3 mb-0 text-center">
                <i class="bi bi-mortarboard me-2"></i>Açık Eğitimlerimiz
            </h1>
        </div>
    </div>

    <?php if ($trainings): ?>
    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">
        <?php foreach ($trainings as $training): ?>
            <div class="col">
                <div class="card h-100 shadow-sm">
                    <!-- Eğitim Resmi -->
                    <div class="card-img-top bg-light text-center py-4">
                        <i class="bi bi-mortarboard-fill text-primary" style="font-size: 3rem;"></i>
                    </div>
                    
                    <div class="card-body">
                        <!-- Eğitim Başlığı -->
                        <h5 class="card-title">
                            <?= htmlspecialchars($training['title']) ?>
                        </h5>
                        
                        <!-- Eğitim Detayları -->
                        <ul class="list-unstyled mb-3">
                            <li class="mb-2">
                                <i class="bi bi-building me-2 text-primary"></i>
                                <?= htmlspecialchars($training['unit_name']) ?>
                            </li>
                            <li class="mb-2">
                                <i class="bi bi-geo-alt me-2 text-primary"></i>
                                <?= htmlspecialchars($training['address']) ?>
                            </li>
                            <li class="mb-2">
                                <i class="bi bi-calendar3 me-2 text-primary"></i>
                                <?= date('d.m.Y', strtotime($training['start_date'])) ?> - 
                                <?= date('d.m.Y', strtotime($training['end_date'])) ?>
                            </li>
                            <li>
                                <i class="bi bi-people me-2 text-primary"></i>
                                Kontenjan: <?= $training['registered'] ?>/<?= $training['capacity'] ?>
                            </li>
                        </ul>

                        <?php if ($training['description']): ?>
                        <p class="card-text small text-muted">
                            <?= nl2br(htmlspecialchars(substr($training['description'], 0, 100))) ?>
                            <?= strlen($training['description']) > 100 ? '...' : '' ?>
                        </p>
                        <?php endif; ?>
                    </div>

                    <div class="card-footer bg-white border-top-0">
                        <?php if ($training['registered'] < $training['capacity']): ?>
                            <a href="training-register.php?id=<?= $training['id'] ?>" 
                               class="btn btn-primary w-100">
                                <i class="bi bi-person-plus me-1"></i>Başvur
                            </a>
                        <?php else: ?>
                            <button class="btn btn-secondary w-100" disabled>
                                <i class="bi bi-x-circle me-1"></i>Kontenjan Dolu
                            </button>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
        <?php endforeach; ?>
    </div>

    <?php else: ?>
    <div class="row">
        <div class="col-12">
            <div class="alert alert-info text-center">
                <i class="bi bi-info-circle me-2"></i>
                Şu anda açık eğitim bulunmamaktadır. Daha sonra tekrar kontrol ediniz.
            </div>
        </div>
    </div>
    <?php endif; ?>
</div>

<!-- Custom CSS -->
<style>
.card {
    transition: transform 0.2s;
}

.card:hover {
    transform: translateY(-5px);
}

.card-img-top {
    height: 160px;
    display: flex;
    align-items: center;
    justify-content: center;
}

.list-unstyled li {
    font-size: 0.9rem;
}

.btn-primary {
    transition: all 0.3s;
}

.btn-primary:hover {
    transform: scale(1.05);
}


</style>

<?php include 'includes/footer.php'; ?> 