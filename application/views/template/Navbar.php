 <?php
 defined('BASEPATH') OR exit('No direct script access allowed');
 ?>

 <ul id="absensi" class="dropdown-content">
   <li><a href="<?php echo base_url()?>absensi">Isi Absensi</a></li>
   <li><a href="<?php echo base_url()?>absensi/cek">Cek Absensi</a></li>
 </ul>

 <ul id="anggota" class="dropdown-content">
   <li><a href="<?php echo base_url()?>anggota/tambahpoin">Tambah Poin</a></li>
   <li><a href="<?php echo base_url()?>anggota/daftarpoin">Poin Anggota</a></li>
   <li><a href="<?php echo base_url()?>anggota/daftar">Daftar Anggota</a></li>
 </ul>

 <nav class="z-depth-0  light-blue darken-3" role="navigation">
  <div class="nav-wrapper container">
    <ul class="left hide-on-med-and-down">
      <li class="center"><?php echo anchor('#', '<img src="assets/images/kopma.png" style="width:60px;">');?></li>
    </ul>
    <ul class="right hide-on-med-and-down">
      <li><a class="dropdown-button" href="#!" data-activates="absensi"><i class="fa fa-address-book-o fa-fw" aria-hidden="true"></i>&nbsp; Absensi</a></li>
      <li><a class="dropdown-button" href="#!" data-activates="anggota"><i class="fa fa-users fa-fw" aria-hidden="true"></i>&nbsp; Anggota</a></li>
      <li><a href="<?php echo base_url()?>summary"><i class="fa fa-bar-chart fa-fw" aria-hidden="true"></i>&nbsp; Summary</a></li>
    </ul>
  </div>
</nav>

<script type="text/javascript">
$( document ).ready(function(){
  // SCROLLSPY
  $('.scrollspy').scrollSpy({
    scrollOffset : 0
  });
  $(".button-collapse").sideNav(); //untuk menghidupkan collapse menu navbar
  // MODAL
  $('.modal').modal();
  // DROPDOWNS
  $(".dropdown-button").dropdown(
    {
      belowOrigin: true
    }
  );
  // TABS
  $('ul.tabs').tabs();
  //SIDENAV
  $(".button-collapse").sideNav();

});
</script>
