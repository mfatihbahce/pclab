<?php
// Hata raporlamayı açalım
error_reporting(E_ALL);
ini_set('display_errors', 1);

require_once '../includes/config.php';
require_once '../includes/db.php';
require_once '../includes/functions.php';

// Session kontrolü - eğer session başlamamışsa başlat
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

// Database bağlantısı
$db = Database::getInstance();

// Kullanıcı kontrolü
if (!isset($_SESSION['user_id'])) {
    header('Location: login.php');
    exit;
}

$user_id = $_SESSION['user_id'];

try {
    // Kullanıcı bilgilerini al
    $user = $db->query("SELECT * FROM users WHERE id = ?", [$user_id])->fetch();
    
    // Kullanıcının eğitimlerini al
    $trainings = $db->query("
        SELECT t.*, u.name as unit_name 
        FROM trainings t 
        LEFT JOIN units u ON t.unit_id = u.id 
        ORDER BY t.start_date DESC
    ")->fetchAll();

} catch (Exception $e) {
    die("Veritabanı hatası: " . $e->getMessage());
}

$page_title = "Kullanıcı Paneli";
include 'includes/header.php';
?>

<div class="container-fluid">
    <!-- Hoşgeldin Kartı -->
    <div class="row mb-4">
        <div class="col-12">
            <div class="card bg-primary text-white">
                <div class="card-body">
                    <h4 class="mb-0">Hoş Geldiniz, <?= htmlspecialchars($user['username'] ?? 'Kullanıcı') ?></h4>
                    <p class="mt-2 mb-0">Eğitim portalına hoş geldiniz.</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Eğitim Listesi -->
    <div class="card">
        <div class="card-header">
            <h5 class="card-title mb-0">Mevcut Eğitimler</h5>
        </div>
        <div class="card-body">
            <?php if (!empty($trainings)): ?>
                <div class="table-responsive">
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>Eğitim Adı</th>
                                <th>Birim</th>
                                <th>Başlangıç</th>
                                <th>Bitiş</th>
                                <th>Durum</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($trainings as $training): 
                                $today = date('Y-m-d');
                                ?>
                                <tr>
                                    <td><?= htmlspecialchars($training['title'] ?? '') ?></td>
                                    <td><?= htmlspecialchars($training['unit_name'] ?? '') ?></td>
                                    <td><?= isset($training['start_date']) ? date('d.m.Y', strtotime($training['start_date'])) : '' ?></td>
                                    <td><?= isset($training['end_date']) ? date('d.m.Y', strtotime($training['end_date'])) : '' ?></td>
                                    <td>
                                        <?php
                                        if (isset($training['start_date']) && isset($training['end_date'])) {
                                            if ($today < $training['start_date']) {
                                                echo '<span class="badge bg-success">Başlayacak</span>';
                                            } elseif ($today > $training['end_date']) {
                                                echo '<span class="badge bg-secondary">Tamamlandı</span>';
                                            } else {
                                                echo '<span class="badge bg-primary">Devam Ediyor</span>';
                                            }
                                        }
                                        ?>
                                    </td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            <?php else: ?>
                <div class="alert alert-info">
                    Henüz kayıtlı eğitim bulunmamaktadır.
                </div>
            <?php endif; ?>
        </div>
    </div>
</div>

<?php include 'includes/footer.php'; ?>