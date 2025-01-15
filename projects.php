<?php
require_once 'includes/config.php';
require_once 'includes/db.php';
require_once 'includes/functions.php';

$db = Database::getInstance();

// Projeleri getir
$projects = $db->query("SELECT * FROM projects ORDER BY created_at DESC")->fetchAll();

include 'includes/header.php';
?>

<!-- Hero Section -->
<div class="container-fluid bg-light py-5 mb-5">
    <div class="container">
        <h1 class="text-center mb-4">Duyurularımız</h1>
        <p class="text-center text-muted">Tamamlanan ve devam eden duyurular</p>
    </div>
</div>

<!-- Projeler Grid -->
<div class="container py-4">
    <div class="row g-4">
        <?php foreach ($projects as $project): ?>
            <div class="col-md-6 col-lg-3">
                <div class="card h-100 project-card">
                    <div class="project-image-container">
                        <img src="<?= SITE_URL ?>/uploads/projects/<?= $project['image_path'] ?>" 
                             class="card-img-top project-image" 
                             alt="<?= clean($project['title']) ?>">
                        
                        <!-- Hover Overlay -->
                        <div class="project-overlay">
                            <button type="button" class="btn btn-light" 
                                    data-bs-toggle="modal" 
                                    data-bs-target="#projectModal<?= $project['id'] ?>">
                                <i class="bi bi-eye"></i> Detayları Gör
                            </button>
                        </div>
                    </div>
                    <div class="card-body d-flex flex-column">
                        <h5 class="card-title"><?= clean($project['title']) ?></h5>
                        <p class="card-text flex-grow-1">
                            <?= mb_substr(clean($project['description']), 0, 100) ?>...
                        </p>
                        <div class="mt-auto">
                            <?php if (!empty($project['url'])): ?>
                                <a href="<?= clean($project['url']) ?>" class="btn btn-outline-primary btn-sm" 
                                   target="_blank">
                                    <i class="bi bi-link-45deg"></i> Duyuruları Gör
                                </a>
                            <?php endif; ?>
                            <button type="button" class="btn btn-primary btn-sm float-end" 
                                    data-bs-toggle="modal" 
                                    data-bs-target="#projectModal<?= $project['id'] ?>">
                                Detayları Gör
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Proje Modal -->
            <div class="modal fade" id="projectModal<?= $project['id'] ?>" tabindex="-1">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title"><?= clean($project['title']) ?></h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                        </div>
                        <div class="modal-body">
                            <img src="<?= SITE_URL ?>/uploads/projects/<?= $project['image_path'] ?>" 
                                 class="img-fluid rounded mb-4" alt="<?= clean($project['title']) ?>">
                            
                            <h6 class="fw-bold mb-3">Duyuru Detayları</h6>
                            <p class="text-muted">
                                <?= nl2br(clean($project['description'])) ?>
                            </p>
                            
                            <div class="d-flex justify-content-between align-items-center mt-4">
                                <small class="text-muted">
                                    Eklenme Tarihi: <?= date('d.m.Y', strtotime($project['created_at'])) ?>
                                </small>
                                <?php if (!empty($project['url'])): ?>
                                    <a href="<?= clean($project['url']) ?>" class="btn btn-primary" target="_blank">
                                        <i class="bi bi-link-45deg"></i> Projeyi Ziyaret Et
                                    </a>
                                <?php endif; ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
</div>

<!-- Stil -->
<style>
.project-card {
    transition: transform 0.3s ease, box-shadow 0.3s ease;
    box-shadow: 0 2px 4px rgba(0,0,0,0.1);
    border: none;
}

.project-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 4px 15px rgba(0,0,0,0.2);
}

.project-image-container {
    position: relative;
    height: 250px;
    overflow: hidden;
}

.project-image {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: transform 0.3s ease;
}

.project-overlay {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: rgba(0,0,0,0.7);
    display: flex;
    justify-content: center;
    align-items: center;
    opacity: 0;
    transition: opacity 0.3s ease;
}

.project-image-container:hover .project-overlay {
    opacity: 1;
}

.project-image-container:hover .project-image {
    transform: scale(1.1);
}

.card-title {
    font-size: 1.25rem;
    font-weight: 600;
    margin-bottom: 1rem;
}

.card-text {
    font-size: 0.95rem;
    color: #6c757d;
    line-height: 1.5;
}

/* Modal Stilleri */
.modal-content {
    border: none;
    border-radius: 10px;
    overflow: hidden;
}

.modal-header {
    background: #f8f9fa;
    border-bottom: 1px solid #eee;
}

.modal-body img {
    width: 100%;
    border-radius: 8px;
}

/* Responsive */
@media (max-width: 992px) {
    .col-lg-4 {
        width: 50%;
    }
}

@media (max-width: 768px) {
    .col-lg-4 {
        width: 100%;
    }
    
    .project-image-container {
        height: 300px;
    }
}

/* Animasyonlar */
.btn {
    transition: all 0.3s ease;
}

.btn:hover {
    transform: translateY(-2px);
}

/* Özel Bootstrap button renk ayarları */
.btn-outline-primary {
    border-color: #0d6efd;
    color: #0d6efd;
}

.btn-outline-primary:hover {
    background-color: #0d6efd;
    color: white;
}
</style>

<?php include 'includes/footer.php'; ?>