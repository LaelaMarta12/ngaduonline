<!-- Page Wrapper -->
<style type="text/css">
ul.navbar-nav {

  

  background-image: -webkit-linear-gradient(20deg, blue, #FF0033);
  font-family: "Luckiest Guy", cursive;
}
 
 </style>
 
}
<div id="wrapper" class="sidebar2">

  <!-- Sidebar -->
  <ul class="navbar-nav  sidebar" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
      <div class="sidebar-brand-icon rotate-n-15">
        <!-- <i class="fas fa-laugh-wink"></i> -->
      </div>
      <link href="<?php echo base_url('assets/user/aldidesigneon/h3.css')?>" rel="stylesheet">

      <div class="sidebar-brand-text mx-3"><h3>ngadu.com</h3> </div>
    </a>
    
    <?php if ($this->session->userdata('level') == 'admin' OR $this->session->userdata('level') == 'petugas') : ?>
    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item active">
      <a class="nav-link" href="<?= base_url('Admin/DashboardController') ?>">
        <i class="fas fa-fw fa-tachometer-alt"></i>
        <span>Dashboard</span></a>
      </li>
      <?php endif; ?>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      

      <!-- Nav Item - Pages Collapse Menu -->
     


      <?php // form pengaduan diakses oleh masyarakat ?>
      <?php if ($this->session->userdata('username') && $this->session->userdata('level') == NULL) : ?>
      <!-- Nav Item - Utilities Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
          <i class="fas fa-fw fa-wrench"></i>
          <span>Pengaduan</span>
        </a>
        <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Pengaduan:</h6>
            <a class="collapse-item" href="<?= base_url('Masyarakat/PengaduanController'); ?>">Tulis Pengaduan</a>
          </div>
        </div>
      </li>
    <?php endif; ?>
    <?php // end form pengaduan diakses oleh masyarakat ?>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <?php // dropdown admin hanya oleh akun admin dan petugas ?>
    <?php if ($this->session->userdata('level') == 'admin' OR $this->session->userdata('level') == 'petugas') : ?>
    <!-- Heading -->
    <div class="sidebar-heading">
      Kelola Data
    </div>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item">
      <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
        <i class="fas fa-user-cog"></i>
        <span>Pengaduan Data</span>
      </a>
      <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
        <div class="bg-white py-2 collapse-inner rounded">
          <h6 class="collapse-header">Tanggapan:</h6>
          <a class="collapse-item" href="<?= base_url('Admin/TanggapanController'); ?>">Pengaduan Masuk</a>
          <a class="collapse-item" href="<?= base_url('Admin/laporancontroller'); ?>">Generate</a>
         
          <div class="collapse-divider"></div>

          <?php // tambah petugas admin akses ?>
          
            <h6 class="collapse-header">Registrasi:</h6>
            <a class="collapse-item" href="<?= base_url('Admin/PetugasController'); ?>">Tambah User</a>
         
          <?php // end tambah petugas admin akses ?>

        </div>
      </div>
    </li>
  <?php endif; ?>
  <?php // end dropdown admin hanya oleh akun admin dan petugas ?>
  

  <?php // generate laporan akses admin ?>
 
    <!-- Nav Item - Logout -->
    <li class="nav-item">
      <a class="nav-link" href="<?= base_url('User'); ?>">
        <i class=""></i>
        <span>logout</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->
