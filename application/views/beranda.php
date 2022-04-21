<style media="screen">
  body {
    background: url(assets/images/bg2.png);
  }
</style>
<div class="container">
  <div class="container black-text" style="padding:0;">
    <div class="row center" style="padding-top:1em;">
      <p>
        <h2 class="thin">KOPERASI MAHASISWA</h2>
        <h4 class="thin">Sekolah Tinggi Ilmu Statistik TA 2017/2018</h4>
      </p>
      <br/>
    </div>
  </div>

  <div class="row">
    <div class="col s12 m3">
      <div class="card light-blue lighten-1" style="">
        <div class="center">
          <a ><span class="fa fa-smile-o" style="font-size: 180px;color:white;"></span></a>
        </div>
        <div class="card-action center hoverable">
          <a href="<?php echo base_url()?>absensi" style="color:black;">Isi Absensi</a>
        </div>
      </div>
    </div>

    <div class="col s12 m3">
      <div class="card light-blue lighten-1" style="">
        <div class="center">
          <a><span class="fa fa-shopping-cart" style="font-size: 180px;color:white;"></span></a>
        </div>
        <div class="card-action center hoverable">
          <a href="<?php echo base_url()?>anggota/tambahpoin" style="color:black;">Tambah Poin </a>
        </div>
      </div>
    </div>

    <div class="col s12 m3">
      <div class="card light-blue lighten-1" style="">
        <div class="center">
          <a><span class="fa fa-folder-open-o" style="font-size: 180px;color:white;"></span></a>
        </div>
        <div class="card-action center hoverable">
          <a href="<?php echo base_url()?>anggota/daftar" style="color:black;">Data Anggota</a>
        </div>
      </div>
    </div>

    <div class="col s12 m3">
      <div class="card light-blue lighten-1" style="">
        <div class="center">
          <a><span class="fa fa-area-chart" style="font-size: 180px;color:white;"></span></a>
        </div>
        <div class="card-action center hoverable">
          <a href="<?php echo base_url()?>summary" style="color:black;">Summary</a>
        </div>
      </div>
    </div>
  </div>

  <div id="typing" class="center">
		<h2 id="type" class="center" style="font-size: 25px"></h2>
	</div>

</div>

<script>
	var options = {
	  strings: ["DARI MAHASISWA", "OLEH KOPMA","UNTUK MAHASISWA"],
	  typeSpeed: 40,
	  loop: true
	}
	var typed = new Typed("#type", options);
</script>
