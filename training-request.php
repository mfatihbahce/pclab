<?php
require_once 'includes/config.php';
require_once 'includes/db.php';
require_once 'includes/functions.php';

$db = Database::getInstance();

// Eğitim türlerini getir
$training_types = $db->query("SELECT * FROM training_types ORDER BY name")->fetchAll();

// Form gönderildiğinde
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // HTML özel karakterlerini decode et
    $school_name = html_entity_decode($_POST['school_name'], ENT_QUOTES, 'UTF-8');
    $contact_person = html_entity_decode($_POST['contact_person'], ENT_QUOTES, 'UTF-8');
    $phone = $_POST['phone'];
    $address = html_entity_decode($_POST['address'], ENT_QUOTES, 'UTF-8');
    $training_type_id = (int)$_POST['training_type_id'];
    $requested_date = $_POST['requested_date'];
    $student_count = (int)$_POST['student_count'];

    try {
        $db = Database::getInstance();
        $db->query(
            "INSERT INTO training_requests (
                school_name, 
                training_type_id, 
                requested_date, 
                contact_person, 
                phone, 
                address, 
                student_count, 
                status, 
                created_at
            ) VALUES (?, ?, ?, ?, ?, ?, ?, 'pending', NOW())",
            [
                $school_name,
                $training_type_id,
                $requested_date,
                $contact_person,
                $phone,
                $address,
                $student_count
            ]
        );
        
        setSuccess("Eğitim talebiniz başarıyla oluşturuldu. En kısa sürede sizinle iletişime geçilecektir.");
        header("Location: training-request.php");
        exit();
    } catch (Exception $e) {
        setError("Talep oluşturulurken bir hata oluştu: " . $e->getMessage());
    }
}

include 'includes/header.php';
?>

<!-- Hero Section -->
<div class="container-fluid bg-light py-5 mb-5 col-md-8">
    <div class="container">
        <h1 class="text-center mb-4 ">Eğitim Talebi</h1>
        <p class="text-center text-muted">Okullar olarak eğitmenlerimizden ücretsiz eğitim talebinde bulunabilirsiniz</p>
    </div>
</div>

<div class="container py-4">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">
                    <h4 class="mb-0">Eğitim Talebi Oluştur</h4>
                </div>
                <div class="card-body">
                    <form method="POST" accept-charset="UTF-8" action="">
                        <div class="mb-3">
                            <label for="school_name" class="form-label">Okul Adı</label>
                            <input type="text" class="form-control" id="school_name" name="school_name" 
                                   value="<?= isset($_POST['school_name']) ? htmlspecialchars($_POST['school_name']) : '' ?>" required>
                        </div>

                        <div class="mb-3">
                            <label for="training_type_id" class="form-label">Talep Edilen Eğitim</label>
                            <select class="form-select" id="training_type_id" name="training_type_id" required>
                                <option value="">Seçiniz</option>
                                <?php foreach ($training_types as $type): ?>
                                    <option value="<?= $type['id'] ?>" 
                                        <?= (isset($_POST['training_type_id']) && $_POST['training_type_id'] == $type['id']) ? 'selected' : '' ?>>
                                        <?= htmlspecialchars($type['name']) ?>
                                    </option>
                                <?php endforeach; ?>
                            </select>
                        </div>

                        <div class="mb-3">
                            <label for="requested_date" class="form-label">Talep Edilen Tarih</label>
                            <input type="date" class="form-control" id="requested_date" name="requested_date" 
                                   value="<?= isset($_POST['requested_date']) ? htmlspecialchars($_POST['requested_date']) : '' ?>" required>
                        </div>

                        <div class="mb-3">
                            <label for="student_count" class="form-label">Öğrenci Sayısı</label>
                            <input type="number" class="form-control" id="student_count" name="student_count" 
                                   min="1" step="1"
                                   value="<?= isset($_POST['student_count']) ? htmlspecialchars($_POST['student_count']) : '' ?>" required>
                        </div>

                        <div class="mb-3">
                            <label for="contact_person" class="form-label">Yetkili Kişi Adı Soyadı</label>
                            <input type="text" class="form-control" id="contact_person" name="contact_person" 
                                   value="<?= isset($_POST['contact_person']) ? htmlspecialchars($_POST['contact_person']) : '' ?>" required>
                        </div>

                        <div class="mb-3">
                            <label for="phone" class="form-label">Telefon Numarası</label>
                            <input type="tel" class="form-control" id="phone" name="phone" 
                                   value="<?= isset($_POST['phone']) ? htmlspecialchars($_POST['phone']) : '' ?>" required>
                        </div>

                        <div class="mb-3">
                            <label for="address" class="form-label">Okul Adresi</label>
                            <textarea class="form-control" id="address" name="address" rows="3" required><?= isset($_POST['address']) ? htmlspecialchars($_POST['address']) : '' ?></textarea>
                        </div>

                        <button type="submit" class="btn btn-primary">Talep Oluştur</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<?php include 'includes/footer.php'; ?>