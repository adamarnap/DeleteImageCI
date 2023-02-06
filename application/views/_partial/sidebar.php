<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<div class="main-sidebar sidebar-style-2">
        <aside id="sidebar-wrapper">
          <div class="sidebar-brand">
            <a href="<?php echo site_url('Dashboard'); ?>">Stisla</a>
          </div>
          <div class="sidebar-brand sidebar-brand-sm">
            <a href="index.html">St</a>
          </div>
          <ul class="sidebar-menu">
            <li class="menu-header">Dashboard</li>
            <li class="dropdown active">
              <a href="#" class="nav-link has-dropdown"><i class="fas fa-fire"></i><span>Dashboard</span></a>
              <ul class="dropdown-menu">
                <li class=active><a class="nav-link" href="index-0.html">General Dashboard</a></li>
                <li><a class="nav-link" href="index.html">Ecommerce Dashboard</a></li>
              </ul>
            </li>
            <li class="menu-header">Menu</li>
            <li class="dropdown">
              <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="far fa-user"></i> <span>Admin</span></a>
              <ul class="dropdown-menu">
                <li><a class="nav-link" href="<?php echo site_url('Admin'); ?>">Data Admin</a></li>
                <li><a class="nav-link" href="<?php echo site_url('Admin/ftambah'); ?>">Tambah Admin</a></li>
                <li><a class="nav-link" href="layout-top-navigation.html">Top Navigation</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="nav-link has-dropdown"><i class="fas fa-users"></i> <span>Kapster</span></a>
              <ul class="dropdown-menu">
                <li><a class="nav-link" href="bootstrap-alert.html">Data kapster</a></li>
                <li><a class="nav-link" href="bootstrap-badge.html">Tambah kapster</a></li>
                <li><a class="nav-link" href="bootstrap-breadcrumb.html">Breadcrumb</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-list-ol"></i> <span>Layanan</span></a>
              <ul class="dropdown-menu">
                <li><a class="nav-link" href="<?php echo site_url('Admin'); ?>">Data Layanan</a></li>
                <li><a class="nav-link" href="<?php echo site_url('Admin'); ?>">Tambah Layanan</a></li>
                <li><a class="nav-link" href="layout-top-navigation.html">Top Navigation</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-dollar-sign"></i> <span>Bank</span></a>
              <ul class="dropdown-menu">
                <li><a class="nav-link" href="<?php echo site_url('Admin'); ?>">Data pembayaran</a></li>
                <li><a class="nav-link" href="<?php echo site_url('Admin'); ?>">Tambah pembayaran</a></li>
                <li><a class="nav-link" href="layout-top-navigation.html">Top Navigation</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-user-plus"></i> <span>Pelanggan</span></a>
              <ul class="dropdown-menu">
                <li><a class="nav-link" href="<?php echo site_url('Admin'); ?>">Data Pelanggan</a></li>
                <li><a class="nav-link" href="<?php echo site_url('Admin'); ?>">Tambah Pelanggan</a></li>
                <li><a class="nav-link" href="layout-top-navigation.html">Top Navigation</a></li>
              </ul>
            </li>
            <li class="menu-header">Pages</li>
            <li class="dropdown">
              <a href="#" class="nav-link has-dropdown"><i class="far fa-user"></i> <span>Auth</span></a>
              <ul class="dropdown-menu">
                <li><a href="auth-forgot-password.html">Forgot Password</a></li> 
                <li><a href="auth-login.html">Login</a></li> 
                <li><a href="auth-register.html">Register</a></li> 
                <li><a href="auth-reset-password.html">Reset Password</a></li> 
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="nav-link has-dropdown"><i class="fas fa-exclamation"></i> <span>Errors</span></a>
              <ul class="dropdown-menu">
                <li><a class="nav-link" href="errors-503.html">503</a></li> 
                <li><a class="nav-link" href="errors-403.html">403</a></li> 
                <li><a class="nav-link" href="errors-404.html">404</a></li> 
                <li><a class="nav-link" href="errors-500.html">500</a></li> 
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="nav-link has-dropdown"><i class="fas fa-bicycle"></i> <span>Features</span></a>
              <ul class="dropdown-menu">
                <li><a class="nav-link" href="features-activities.html">Activities</a></li>
                <li><a class="nav-link" href="features-post-create.html">Post Create</a></li>
                <li><a class="nav-link" href="features-posts.html">Posts</a></li>
                <li><a class="nav-link" href="features-profile.html">Profile</a></li>
                <li><a class="nav-link" href="features-settings.html">Settings</a></li>
                <li><a class="nav-link" href="features-setting-detail.html">Setting Detail</a></li>
                <li><a class="nav-link" href="features-tickets.html">Tickets</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="nav-link has-dropdown"><i class="fas fa-ellipsis-h"></i> <span>Utilities</span></a>
              <ul class="dropdown-menu">
                <li><a href="utilities-contact.html">Contact</a></li>
                <li><a class="nav-link" href="utilities-invoice.html">Invoice</a></li>
                <li><a href="utilities-subscribe.html">Subscribe</a></li>
              </ul>
            </li>            <li><a class="nav-link" href="credits.html"><i class="fas fa-pencil-ruler"></i> <span>Credits</span></a></li>
          </ul>

          <div class="mt-4 mb-4 p-3 hide-sidebar-mini">
            <a href="https://getstisla.com/docs" class="btn btn-primary btn-lg btn-block btn-icon-split">
              <i class="fas fa-rocket"></i> Documentation
            </a>
          </div>        </aside>
      </div>