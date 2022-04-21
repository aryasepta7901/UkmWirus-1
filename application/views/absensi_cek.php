<style media="screen">
  body {
    background: url(assets/images/bg2.png);
  }
</style>
<br>
<div class="container">
	<div class="card">
		<div class="card-content">
			<span class="card-title center">Cek Absensi</span>
      <br>
			<div class="center">
				<img class="" src="<?php echo base_url()?>assets/images/absen.png" style="width:200px">
        <br><br>
			</div>
			<div class="center">
				<form class="container" action="<?php echo base_url()?>absensi/cek_absensi" method="post">
					<div class=" container">
						<div class="input-field col s12 l12">
							<input id="nim" name="nim" type="text" required>
							<label for="nim">NIM</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12 ">
							<button class="btn cyan waves-effect waves-light" type="submit" name="submit">CEK<i class=""></i></button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
