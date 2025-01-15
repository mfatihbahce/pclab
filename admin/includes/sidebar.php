<div class="sidebar bg-dark">
    <div class="sidebar-header">
        <h3 class="text-white">Admin Panel</h3>
    </div>
    <ul class="nav flex-column">
        <?php if (isset($_SESSION['role']) && $_SESSION['role'] === 'admin'): ?>
            <li class="nav-item">
                <a class="nav-link" href="<?= SITE_URL ?>/admin/dashboard">
                    <i class="bi bi-speedometer2"></i> Dashboard
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<?= SITE_URL ?>/admin/about-manage">
                    <i class="bi bi-file-text"></i> Hakkımızda
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<?= SITE_URL ?>/admin/gallery-manage">
                    <i class="bi bi-images"></i> Galeri
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<?= SITE_URL ?>/admin/projects-manage">
                    <i class="bi bi-briefcase"></i> Çalışmalar
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="news-manage">
                    <i class="bi bi-newspaper"></i> Haber Yönetimi
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<?= SITE_URL ?>/admin/contact-manage">
                    <i class="bi bi-envelope"></i> İletişim Mesajları
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<?= SITE_URL ?>/admin/unit-manage">
                    <i class="bi bi-building"></i> Birimler
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<?= SITE_URL ?>/admin/training-manage">
                    <i class="bi bi-mortarboard"></i> Eğitimler
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<?= SITE_URL ?>/admin/student-list">
                    <i class="bi bi-list"></i> Öğrenci Listesi
                </a>
            </li>
		    <li class="nav-item">
                <a class="nav-link" href="<?= SITE_URL ?>/admin/training-types">
                    <i class="bi bi-list"></i> Eğitim Türü
                </a>
            </li>
		    <li class="nav-item">
                <a class="nav-link" href="<?= SITE_URL ?>/admin/training-requests">
                    <i class="bi bi-list"></i> Eğitim Talep Listesi
                </a>
            </li>		
        <?php endif; ?>
        
        <!-- Her kullanıcı için görünür -->
        <li class="nav-item">
            <a class="nav-link <?= str_contains($current_page, 'userlistedu') ? 'active' : '' ?>" 
               href="<?= SITE_URL ?>/admin/userlistedu">
                <i class="bi bi-speedometer2"></i>
                <span>Kullanıcı Ekranı</span>
            </a>
        </li>
		<li class="nav-item">
            <a class="nav-link <?= str_contains($current_page, 'add-student-registration') ? 'active' : '' ?>" 
               href="<?= SITE_URL ?>/admin/add-student-registration">
                <i class="bi bi-person-plus me-2"></i>
                <span>Manuel Başvuru</span>
            </a>
        </li>
    </ul>
</div>