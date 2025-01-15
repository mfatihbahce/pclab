<?php
require_once '../includes/config.php';
require_once '../includes/db.php';
require_once '../includes/functions.php';

// Oturum kontrolü
if (!isset($_SESSION['user_id'])) {
    header('Location: login.php');
    exit();
}

$db = Database::getInstance();

// Eğitim türü silme işlemi
if (isset($_GET['delete'])) {
    $id = filter_input(INPUT_GET, 'delete', FILTER_SANITIZE_NUMBER_INT);
    try {
        $db->query("DELETE FROM training_types WHERE id = ?", [$id]);
        setSuccess("Eğitim türü başarıyla silindi.");
    } catch (Exception $e) {
        setError("Silme işlemi başarısız oldu. Bu eğitim türü kullanımda olabilir.");
    }
    header("Location: training-types.php");
    exit();
}

// Form gönderildiğinde
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $name = filter_input(INPUT_POST, 'name', FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    $description = filter_input(INPUT_POST, 'description', FILTER_SANITIZE_FULL_SPECIAL_CHARS);

    if (!empty($name)) {
        try {
            $db->query(
                "INSERT INTO training_types (name, description) VALUES (?, ?)",
                [$name, $description]
            );
            setSuccess("Eğitim türü başarıyla eklendi.");
            header("Location: training-types.php");
            exit();
        } catch (Exception $e) {
            setError("Bir hata oluştu: " . $e->getMessage());
        }
    } else {
        setError("Eğitim türü adı gereklidir.");
    }
}

// Eğitim türlerini getir
$training_types = $db->query("SELECT * FROM training_types ORDER BY name")->fetchAll();

include 'includes/header.php';
?>

<div class="container py-4">
    <div class="row">
        <div class="col-md-4">
            <div class="card">
                <div class="card-header">
                    <h4 class="mb-0">Yeni Eğitim Türü Ekle</h4>
                </div>
                <div class="card-body">
                    <form method="POST" action="">
                        <div class="mb-3">
                            <label for="name" class="form-label">Eğitim Adı</label>
                            <input type="text" class="form-control" id="name" name="name" required>
                        </div>

                        <div class="mb-3">
                            <label for="description" class="form-label">Açıklama</label>
                            <textarea class="form-control" id="description" name="description" rows="3"></textarea>
                        </div>

                        <button type="submit" class="btn btn-primary">Ekle</button>
                    </form>
                </div>
            </div>
        </div>

        <div class="col-md-8">
            <div class="card">
                <div class="card-header">
                    <h4 class="mb-0">Eğitim Türleri</h4>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Eğitim Adı</th>
                                    <th>Açıklama</th>
                                    <th>İşlemler</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($training_types as $type): ?>
                                <tr>
                                    <td><?= $type['id'] ?></td>
                                    <td><?= htmlspecialchars($type['name']) ?></td>
                                    <td><?= htmlspecialchars($type['description'] ?? '') ?></td>
                                    <td>
                                        <a href="?delete=<?= $type['id'] ?>" 
                                           class="btn btn-danger btn-sm"
                                           onclick="return confirm('Bu eğitim türünü silmek istediğinizden emin misiniz?')">
                                            Sil
                                        </a>
                                    </td>
                                </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<?php include 'includes/footer.php'; ?> 