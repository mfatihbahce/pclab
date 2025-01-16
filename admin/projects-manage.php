<?php
require_once '../includes/config.php';
require_once '../includes/db.php';
require_once '../includes/functions.php';
require_once 'includes/auth_check.php'; // Yetki kontrolü
checkAdmin();

$db = Database::getInstance();

// Silme işlemi
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['action']) && $_POST['action'] == 'delete') {
    $id = filter_input(INPUT_POST, 'id', FILTER_SANITIZE_NUMBER_INT);
    
    // Önce eski resmi sil
    $old_image = $db->query("SELECT image_path FROM projects WHERE id = ?", [$id])->fetch();
    if ($old_image && $old_image['image_path']) {
        @unlink('../uploads/projects/' . $old_image['image_path']);
    }
    
    // Projeyi sil
    $stmt = $db->query("DELETE FROM projects WHERE id = ?", [$id]);
    if ($stmt) {
        setSuccess('Proje başarıyla silindi.');
    } else {
        setError('Proje silinirken bir hata oluştu.');
    }
    
    header('Location: projects-manage.php');
    exit;
}

// Projeleri getir
$projects = $db->query("SELECT * FROM projects ORDER BY created_at DESC")->fetchAll();

include 'includes/header.php';
?>

<div class="container-fluid">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h2>Proje Yönetimi</h2>
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addProjectModal">
            Yeni Proje Ekle
        </button>
    </div>

    <!-- Projeler Listesi -->
    <div class="row g-4">
        <?php foreach ($projects as $project): ?>
            <div class="col-md-3">
                <div class="card h-100 project-card">
                    <img src="<?= SITE_URL ?>/uploads/projects/<?= $project['image_path'] ?>" 
                         class="card-img-top" alt="<?= clean($project['title']) ?>"
                         style="height: 200px; object-fit: cover;">
                    <div class="card-body d-flex flex-column">
                        <h5 class="card-title"><?= clean($project['title']) ?></h5>
                        <p class="card-text flex-grow-1">
                            <?= mb_substr(clean($project['description']), 0, 100) ?>...
                        </p>
                        <div class="mt-auto">
                            <div class="d-flex gap-2">
                                <button type="button" class="btn btn-info flex-grow-1" 
                                        data-bs-toggle="modal" 
                                        data-bs-target="#viewProjectModal<?= $project['id'] ?>">
                                    Görüntüle
                                </button>
                                <form method="POST" class="d-inline flex-grow-1" 
                                      onsubmit="return confirm('Bu projeyi silmek istediğinize emin misiniz?');">
                                    <input type="hidden" name="action" value="delete">
                                    <input type="hidden" name="id" value="<?= $project['id'] ?>">
                                    <button type="submit" class="btn btn-danger w-100">Sil</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Proje Görüntüleme Modal -->
<div class="modal fade" id="viewProjectModal<?= $project['id'] ?>" tabindex="-1">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"><?= clean($project['title']) ?></h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>
            <div class="modal-body">
                <img src="<?= SITE_URL ?>/uploads/projects/<?= $project['image_path'] ?>" 
                     class="img-fluid mb-3 rounded" alt="<?= clean($project['title']) ?>">
                <h6>Proje Açıklaması:</h6>
                <p><?= nl2br(clean($project['description'])) ?></p>
                <hr>
                <div class="row">
                    <div class="col-md-6">
                        <small class="text-muted">
                            Eklenme Tarihi: <?= date('d.m.Y H:i', strtotime($project['created_at'])) ?>
                        </small>
                    </div>
                    <div class="col-md-6 text-end">
                        <?php if (!empty($project['url'])): ?>
                            <small class="text-muted">
                                Proje URL: <a href="<?= clean($project['url']) ?>" target="_blank"><?= clean($project['url']) ?></a>
                            </small>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
        <?php endforeach; ?>
    </div>

    <!-- Yeni Proje Ekleme Modal -->
    <div class="modal fade" id="addProjectModal" tabindex="-1">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Yeni Proje Ekle</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body">
                    <form action="save-project.php" method="POST" enctype="multipart/form-data">
                        <div class="mb-3">
                            <label class="form-label">Proje Başlığı</label>
                            <input type="text" name="title" class="form-control" required>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Proje Açıklaması</label>
                            <textarea name="description" class="form-control" rows="5" required></textarea>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Proje URL</label>
                            <input type="url" name="url" class="form-control">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Proje Görseli</label>
                            <input type="file" name="image" class="form-control" accept="image/*" required>
                        </div>
                        <div class="text-end">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">İptal</button>
                            <button type="submit" class="btn btn-primary">Kaydet</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Stil -->
<style>
.project-card {
    transition: transform 0.3s ease, box-shadow 0.3s ease;
    box-shadow: 0 2px 4px rgba(0,0,0,0.1);
}

.project-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 4px 8px rgba(0,0,0,0.2);
}

.card-title {
    font-size: 1.1rem;
    margin-bottom: 0.75rem;
}

.card-text {
    font-size: 0.9rem;
    color: #6c757d;
    margin-bottom: 1rem;
}

/* Responsive */
@media (max-width: 768px) {
    .col-md-3 {
        width: 50%;
    }
}

@media (max-width: 576px) {
    .col-md-3 {
        width: 100%;
    }
}
</style>

<?php include 'includes/footer.php'; ?>