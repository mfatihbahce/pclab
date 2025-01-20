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
                    <i class="bi bi-info-circle"></i> Hakkımızda
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
                    <i class="bi bi-people"></i> Öğrenci Listesi
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<?= SITE_URL ?>/admin/training-types">
                    <i class="bi bi-collection"></i> Eğitim Türü
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<?= SITE_URL ?>/admin/training-requests">
                    <i class="bi bi-clipboard-check"></i> Eğitim Talep Listesi
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<?= SITE_URL ?>/admin/seo-settings">
                    <i class="bi bi-gear"></i> SEO Ayarları
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<?= SITE_URL ?>/admin/users">
                    <i class="bi bi-people-fill"></i> Kullanıcılar
                </a>
            </li>        
        <?php endif; ?>
        
        <!-- Her kullanıcı için görünür -->
        <?php if (isset($_SESSION['role']) && $_SESSION['role'] === 'user'): ?>
        <li class="nav-item">
            <a class="nav-link <?= str_contains($current_page, 'userlistedu') ? 'active' : '' ?>" 
               href="<?= SITE_URL ?>/admin/userlistedu">
                <i class="bi bi-person-workspace"></i>
                <span>Kullanıcı Ekranı</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link <?= str_contains($current_page, 'add-student-registration') ? 'active' : '' ?>" 
               href="<?= SITE_URL ?>/admin/add-student-registration">
                <i class="bi bi-person-plus-fill"></i>
                <span>Manuel Başvuru</span>
            </a>
        </li>
        <?php endif; ?>
    </ul>
</div>