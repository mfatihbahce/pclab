<?php
require_once '../includes/config.php';
require_once '../includes/db.php';
require_once '../includes/functions.php';
require_once 'includes/auth_check.php'; // Yetki kontrolü
checkAdmin();

$db = Database::getInstance();

// Haberleri getir
$news = $db->query("SELECT * FROM news ORDER BY created_at DESC")->fetchAll();

include 'includes/header.php';
?>

<div class="container-fluid">
    <!-- Başlık ve Ekle Butonu -->
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h2>Haber Yönetimi</h2>
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addNewsModal">
            <i class="fas fa-plus"></i> Yeni Haber Ekle
        </button>
    </div>

    <!-- Haberler Listesi -->
    <div class="card">
        <div class="card-body">
            <?php if (empty($news)): ?>
                <div class="alert alert-info">Henüz haber bulunmamaktadır.</div>
            <?php else: ?>
                <div class="table-responsive">
                    <table class="table table-hover table-striped">
                        <thead class="table-light">
                            <tr>
                                <th>ID</th>
                                <th>Başlık</th>
                                <th>Oluşturulma Tarihi</th>
                                <th>Güncellenme Tarihi</th>
                                <th>İşlemler</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($news as $item): ?>
                                <tr>
                                    <td><?= htmlspecialchars($item['id']) ?></td>
                                    <td><?= htmlspecialchars($item['title']) ?></td>
                                    <td>
                                        <?= $item['created_at'] ? date('d.m.Y H:i', strtotime($item['created_at'])) : '-' ?>
                                    </td>
                                    <td>
                                        <?= $item['updated_at'] ? date('d.m.Y H:i', strtotime($item['updated_at'])) : '-' ?>
                                    </td>
                                    <td>
                                        <div class="btn-group" role="group">
                                            <a href="edit-news.php?id=<?= $item['id'] ?>" 
                                               class="btn btn-sm btn-warning">
                                                <i class="fas fa-edit"></i> Düzenle
                                            </a>
                                            <button type="button" 
                                                    class="btn btn-sm btn-danger" 
                                                    onclick="deleteNews(<?= $item['id'] ?>)">
                                                <i class="fas fa-trash"></i> Sil
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            <?php endif; ?>
        </div>
    </div>
</div>

<!-- Yeni Haber Ekleme Modal -->
<div class="modal fade" id="addNewsModal" tabindex="-1" aria-labelledby="addNewsModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="addNewsModalLabel">Yeni Haber Ekle</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Kapat"></button>
            </div>
            <form action="save-news.php" method="POST" enctype="multipart/form-data">
                <div class="modal-body">
                    <div class="mb-3">
                        <label for="title" class="form-label">Başlık</label>
                        <input type="text" class="form-control" id="title" name="title" required>
                    </div>
                    <div class="mb-3">
                        <label for="content" class="form-label">İçerik</label>
                        <textarea class="form-control" id="content" name="content" rows="5" required></textarea>
                    </div>
                    <div class="mb-3">
                        <label for="image" class="form-label">Görsel</label>
                        <input type="file" class="form-control" id="image" name="image" accept="image/*">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">İptal</button>
                    <button type="submit" class="btn btn-primary">Kaydet</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- JavaScript Fonksiyonları -->
<script>
function deleteNews(id) {
    if (confirm('Bu haberi silmek istediğinize emin misiniz?')) {
        window.location.href = 'delete-news.php?id=' + id;
    }
}

// CKEditor entegrasyonu (isteğe bağlı)
document.addEventListener('DOMContentLoaded', function() {
    if (typeof CKEDITOR !== 'undefined') {
        CKEDITOR.replace('content');
    }
});
</script>

<?php include 'includes/footer.php'; ?>