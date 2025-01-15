<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel - gencsanliurfa</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" rel="stylesheet">
    <link href="<?= SITE_URL ?>/assets/css/admin.css" rel="stylesheet">
</head>
<body>
    <div class="wrapper">
        <?php include 'sidebar.php'; ?>
        
        <div class="main">
            <nav class="navbar navbar-expand navbar-light bg-white">
                <div class="container-fluid">
                    <button type="button" id="sidebarToggle" class="btn">
                        <i class="bi bi-list"></i>
                    </button>
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" 
                               role="button" data-bs-toggle="dropdown">
                                <?= $_SESSION['username'] ?>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-end">
								<li><a class="dropdown-item" href="<?= SITE_URL ?>/admin/profile">Profil</a></li>
                                <li><a class="dropdown-item" href="<?= SITE_URL ?>">Siteye Dön</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="<?= SITE_URL ?>/logout.php">Çıkış Yap</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
            
            <div class="container-fluid p-4">
                <?= showMessages() ?>
               