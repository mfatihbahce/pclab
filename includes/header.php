<?php
require_once __DIR__ . '/config.php';
require_once __DIR__ . '/db.php';
require_once __DIR__ . '/functions.php';

// Aktif sayfayı belirle
$current_page = basename($_SERVER['PHP_SELF']);
?>
<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GENÇ SANLIURFA</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet">
    <link href="<?= SITE_URL ?>/assets/css/style.css" rel="stylesheet">
    
    <style>
        /* Header Styles */
        .top-bar {
            background: #1a237e;
            padding: 8px 0;
            color: #fff;
            font-size: 0.9rem;
        }

        .top-bar a {
            color: #fff;
            text-decoration: none;
            margin-right: 1.5rem;
        }

        .main-header {
            background: #fff;
            box-shadow: 0 2px 15px rgba(0,0,0,0.1);
            padding: 0;
        }

        .navbar > .container {
            max-width: 1300px;
        }

        .navbar-brand {
            font-size: 1.3rem;
            font-weight: 700;
            color: #1a237e !important;
            padding: 0.8rem 0;
        }

        .nav-link {
            color: #333 !important;
            font-weight: 500;
            padding: 1.2rem 0.7rem !important;
            position: relative;
            transition: all 0.3s ease;
            font-size: 0.9rem;
        }

        .nav-link i {
            font-size: 0.85rem;
            margin-right: 0.3rem !important;
        }

        .nav-link:hover,
        .nav-link.active {
            color: #1a237e !important;
        }

        .nav-link::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 0;
            height: 3px;
            background: #1a237e;
            transition: width 0.3s ease;
        }

        .nav-link:hover::after,
        .nav-link.active::after {
            width: 100%;
        }

        .auth-buttons .nav-link {
            padding: 0.4rem 0.8rem !important;
            margin: 0.8rem 0.2rem;
            border-radius: 5px;
        }

        .login-btn {
            background: #e3f2fd;
        }

        .register-btn {
            background: #1a237e;
            color: #fff !important;
        }

        .register-btn:hover {
            background: #0d47a1;
        }

        .navbar-toggler {
            border: none;
            padding: 0.5rem;
        }

        .navbar-toggler:focus {
            box-shadow: none;
        }

        /* Responsive */
        @media (max-width: 1200px) {
            .nav-link {
                padding: 1rem 0.5rem !important;
                font-size: 0.85rem;
            }
        }

        @media (max-width: 991px) {
            .top-bar {
                display: none;
            }

            .nav-link {
                padding: 0.75rem 1rem !important;
            }

            .nav-link::after {
                display: none;
            }
        }
    </style>
</head>
<body>
    <!-- Top Bar -->
    <div class="top-bar">
        <div class="container">
            <div class="d-flex justify-content-between align-items-center">
                <div>
                    <a href="tel:+905555555555"><i class="bi bi-telephone me-1"></i>+90 555 555 5555</a>
                    <a href="mailto:info@gencsanliurfa.com"><i class="bi bi-envelope me-1"></i>info@gencsanliurfa.com</a>
                </div>
                <div>
                    <a href="#"><i class="bi bi-facebook"></i></a>
                    <a href="#"><i class="bi bi-instagram"></i></a>
                    <a href="#"><i class="bi bi-twitter"></i></a>
                </div>
            </div>
        </div>
    </div>

    <!-- Main Header -->
    <header class="main-header">
        <nav class="navbar navbar-expand-lg">
            <div class="container">
                <a class="navbar-brand" href="<?= SITE_URL ?>">
                    <i class="bi bi-robot me-2"></i>GENÇ SANLIURFA
                </a>
                
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                    <i class="bi bi-list fs-1"></i>
                </button>

                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav me-auto">
                        <li class="nav-item">
                            <a class="nav-link <?= $current_page == 'about' ? 'active' : '' ?>" href="<?= SITE_URL ?>/about">
                                <i class="bi bi-info-circle"></i>Hakkımızda
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link <?= $current_page == 'projects' ? 'active' : '' ?>" href="<?= SITE_URL ?>/projects">
                                <i class="bi bi-gear"></i>Duyurular
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link <?= $current_page == 'news' ? 'active' : '' ?>" href="<?= SITE_URL ?>/news">
                                <i class="bi bi-newspaper"></i>Haberler
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link <?= $current_page == 'trainings' ? 'active' : '' ?>" href="<?= SITE_URL ?>/trainings">
                                <i class="bi bi-building"></i>Eğitimler
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link <?= $current_page == 'units' ? 'active' : '' ?>" href="<?= SITE_URL ?>/units">
                                <i class="bi bi-pc-display-horizontal"></i>Sınıflarımız
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link <?= $current_page == 'training-request' ? 'active' : '' ?>" href="<?= SITE_URL ?>/training-request">
                                <i class="bi bi-mortarboard"></i>Eğitim Talep Et
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link <?= $current_page == 'contact' ? 'active' : '' ?>" href="<?= SITE_URL ?>/contact">
                                <i class="bi bi-telephone"></i>İletişim
                            </a>
                        </li>
                    </ul>

                    <ul class="navbar-nav auth-buttons">
                        <?php if (isset($_SESSION['user_id'])): ?>
                            <li class="nav-item">
                                <a class="nav-link login-btn" href="<?= SITE_URL ?>/admin/dashboard">
                                    <i class="bi bi-speedometer2"></i>Panel
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link register-btn" href="<?= SITE_URL ?>/logout">
                                    <i class="bi bi-box-arrow-right"></i>Çıkış Yap
                                </a>
                            </li>
                        <?php else: ?>
                            <li class="nav-item">
                                <a class="nav-link login-btn" href="<?= SITE_URL ?>/login">
                                    <i class="bi bi-box-arrow-in-right"></i>Giriş
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link register-btn" href="<?= SITE_URL ?>/register">
                                    <i class="bi bi-person-plus"></i>Kayıt Ol
                                </a>
                            </li>
                        <?php endif; ?>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    <div class="container mt-4">
        <?= showMessages() ?>