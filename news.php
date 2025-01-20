<?php
require_once 'includes/config.php';
require_once 'includes/db.php';
require_once 'includes/functions.php';

$db = Database::getInstance();

// Sayfalama
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
$per_page = 8;
$offset = ($page - 1) * $per_page;

// Toplam haber sayısı
$total_count = $db->query("SELECT COUNT(*) as count FROM news")->fetch()['count'];
$total_pages = ceil($total_count / $per_page);

// Haberleri getir
$news = $db->query(
    "SELECT * FROM news ORDER BY created_at DESC LIMIT ? OFFSET ?",
    [$per_page, $offset]
)->fetchAll();

$page_title = 'Haberler';
include 'includes/header.php';
?>

<!-- Hero Section -->

<br><br>
    <div class="section-header text-center mb-5" data-aos="fade-up">
        <h6 class="text-primary fw-bold text-uppercase">Son Gelişmeler</h6>
        <h2 class="display-5 fw-bold">Bizden Haberler</h2>
        <div class="divider mx-auto"></div>
    </div>

<div class="container py-5">
    
    
    <div class="row g-4">
        <?php foreach ($news as $item): ?>
            <div class="col-md-3">
                <div class="card h-100">
                    <?php if ($item['image_path']): ?>
                        <img src="<?= SITE_URL ?>/uploads/news/<?= $item['image_path'] ?>" 
                             class="card-img-top" alt="<?= clean($item['title']) ?>"
                             style="height: 200px; object-fit: cover;">
                    <?php endif; ?>
                    <div class="card-body d-flex flex-column">
                        <h5 class="card-title"><?= clean($item['title']) ?></h5>
                        <p class="card-text flex-grow-1">
                            <?= mb_substr(strip_tags($item['content']), 0, 100) ?>...
                        </p>
                        <div class="mt-auto">
                            <small class="text-muted">
                                <?= date('d.m.Y', strtotime($item['created_at'])) ?>
                            </small>
                            <button type="button" class="btn btn-primary float-end" 
                                    data-bs-toggle="modal" 
                                    data-bs-target="#newsModal<?= $item['id'] ?>">
                                Devamını Oku
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Haber Detay Modal -->
            <div class="modal fade" id="newsModal<?= $item['id'] ?>" tabindex="-1">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title"><?= clean($item['title']) ?></h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                        </div>
                        <div class="modal-body">
                            <?php if ($item['image_path']): ?>
                                <img src="<?= SITE_URL ?>/uploads/news/<?= $item['image_path'] ?>" 
                                     class="img-fluid mb-3" alt="<?= clean($item['title']) ?>">
                            <?php endif; ?>
                            <?= $item['content'] ?>
                            <hr>
                            <small class="text-muted">
                                Yayınlanma Tarihi: <?= date('d.m.Y H:i', strtotime($item['created_at'])) ?>
                            </small>
                        </div>
                    </div>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
    
    <!-- Sayfalama -->
    <?php if ($total_pages > 1): ?>
        <nav aria-label="Sayfalama" class="mt-4">
            <ul class="pagination justify-content-center">
                <?php for ($i = 1; $i <= $total_pages; $i++): ?>
                    <li class="page-item <?= $i == $page ? 'active' : '' ?>">
                        <a class="page-link" href="?page=<?= $i ?>"><?= $i ?></a>
                    </li>
                <?php endfor; ?>
            </ul>
        </nav>
    <?php endif; ?>
</div>

<?php include 'includes/footer.php'; ?> 