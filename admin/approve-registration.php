<?php
require_once '../includes/config.php';
require_once '../includes/db.php';
require_once '../includes/functions.php';
checkAdmin();

$registration_id = filter_input(INPUT_GET, 'id', FILTER_SANITIZE_NUMBER_INT);
$training_id = filter_input(INPUT_GET, 'training_id', FILTER_SANITIZE_NUMBER_INT);
$unit_id = filter_input(INPUT_GET, 'unit_id', FILTER_SANITIZE_NUMBER_INT);

if ($registration_id && $training_id && $unit_id) {
    $db = Database::getInstance();
    
    try {
        // Kayıt bilgilerini al
        $registration = $db->query(
            "SELECT * FROM training_registrations WHERE id = ?",
            [$registration_id]
        )->fetch();

        if ($registration) {
            // Öğrenci listesine ekle
            $db->query(
                "INSERT INTO students (
                    first_name, last_name, tc_no, birth_date, nationality,
                    district_id, neighborhood, phone, unit_id, training_id
                ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",
                [
                    $registration['first_name'],
                    $registration['last_name'],
                    $registration['tc_no'],
                    $registration['birth_date'],
                    $registration['nationality'],
                    $registration['district_id'],
                    $registration['neighborhood'],
                    $registration['phone'],
                    $unit_id,
                    $training_id
                ]
            );
            
            setSuccess('Kayıt onaylandı ve öğrenci listesine eklendi.');
        }
    } catch (Exception $e) {
        setError('Kayıt onaylanırken bir hata oluştu: ' . $e->getMessage());
    }
}

redirect('training-registrations.php?id=' . $training_id); 