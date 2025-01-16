<?php
require_once 'includes/config.php';
require_once 'includes/db.php';
require_once 'includes/functions.php';

$db = Database::getInstance();

// Aktif eğitimleri getir
$trainings = $db->query(
    "SELECT t.*, u.name as unit_name, u.address,
            (SELECT COUNT(*) FROM training_applications WHERE training_id = t.id) as registered
     FROM trainings t 
     JOIN units u ON t.unit_id = u.id 
     WHERE t.end_date >= CURDATE()
     ORDER BY t.start_date ASC"
)->fetchAll();

// Kullanıcının başvurduğu eğitimleri getir
$user_applications = [];
if (isLoggedIn()) {
    $user_applications = $db->query("
        SELECT training_id 
        FROM training_applications 
        WHERE user_id = ?
    ", [$_SESSION['user_id']])->fetchAll(PDO::FETCH_COLUMN);
}

$page_title = 'Eğitimler';
include 'includes/header.php';
?>

<div class="container py-5">
    <div class="section-header text-center mb-5" data-aos="fade-up">
        <h6 class="text-primary fw-bold text-uppercase">Eğitimlerimiz</h6>
        <h2 class="display-5 fw-bold">Aktif Eğitim Programları</h2>
        <div class="divider mx-auto"></div>
    </div>

    <?= showMessages() ?>

    <div class="row g-4">
        <?php if ($trainings): foreach ($trainings as $training): ?>
            <div class="col-md-3" data-aos="fade-up">
                <div class="card h-100 training-card">
                    <div class="card-img-top tech-pattern p-4 text-center">
                        <i class="bi bi-robot display-4 text-primary"></i>
                    </div>
                    
                    <div class="card-body">
                        <h5 class="card-title fw-bold"><?= htmlspecialchars($training['title']) ?></h5>
                        
                        <ul class="list-unstyled mb-3">
                            <li class="mb-2 d-flex align-items-center">
                                <i class="bi bi-building me-2 text-primary"></i>
                                <span><?= htmlspecialchars($training['unit_name']) ?></span>
                            </li>
                            <li class="mb-2 d-flex align-items-center">
                                <i class="bi bi-clock me-2 text-primary"></i>
                                <span><?= date('d.m.Y', strtotime($training['start_date'])) ?></span> - 
                                <span><?= date('d.m.Y', strtotime($training['end_date'])) ?></span>
                            </li>
                            <li class="mb-2 d-flex align-items-center">
                                <i class="bi bi-calendar3 me-2 text-primary"></i>
                                <span>Son Başvuru: <?= date('d.m.Y', strtotime($training['deadline_date'])) ?></span>
                            </li>
                            <li class="d-flex align-items-center">
                                <i class="bi bi-people me-2 text-primary"></i>
                                <div class="progress flex-grow-1" style="height: 8px;">
                                    <div class="progress-bar" role="progressbar" 
                                         style="width: <?= ($training['registered']/$training['capacity'])*100 ?>%"></div>
                                </div>
                                <span class="ms-2"><?= $training['registered'] ?>/<?= $training['capacity'] ?></span>
                            </li>
                        </ul>
                    </div>

                    <div class="card-footer bg-transparent border-0">
                        <?php if (!isLoggedIn()): ?>
                            <a href="register.php" class="btn btn-primary w-100 rounded-pill hover-scale">
                                <i class="bi bi-person-plus me-1"></i>Kayıt Ol ve Başvur
                            </a>
                        <?php elseif (in_array($training['id'], $user_applications)): ?>
                            <button class="btn btn-success w-100 rounded-pill" disabled>
                                <i class="bi bi-check-circle me-1"></i>Başvuru Yaptınız
                            </button>
                        <?php elseif (!isProfileComplete($_SESSION['user_id'])): ?>
                            <a href="profile.php" class="btn btn-warning w-100 rounded-pill">
                                <i class="bi bi-person-gear me-1"></i>Profili Tamamla
                            </a>
                        <?php elseif ($training['registered'] >= $training['capacity']): ?>
                            <button class="btn btn-secondary w-100 rounded-pill" disabled>
                                <i class="bi bi-x-circle me-1"></i>Kontenjan Dolu
                            </button>
                        <?php else: ?>
                            <form action="training_actions.php" method="POST">
                                <input type="hidden" name="action" value="apply">
                                <input type="hidden" name="training_id" value="<?= $training['id'] ?>">
                                <button type="submit" class="btn btn-primary w-100 rounded-pill hover-scale">
                                    <i class="bi bi-send me-1"></i>Başvur
                                </button>
                            </form>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
        <?php endforeach; else: ?>
            <div class="col-12">
                <div class="alert alert-info text-center">
                    <i class="bi bi-info-circle me-2"></i>
                    Şu anda açık eğitim bulunmamaktadır.
                </div>
            </div>
        <?php endif; ?>
    </div>
</div>

<?php include 'includes/footer.php'; ?>