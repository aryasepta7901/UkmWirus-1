<style media="screen">
  body {
    background: url(assets/images/bg2.png);
  }
</style>
<br>
<div class="container">
  <div id="section">
    <div class="row">
      <div class="col s12 m12 l12">
        <div class="card">
          <div class="card-content">
            <!-- Judul -->

            <div class="card-title center">
              Isi Absensi
            </div>

            <form class="" action="<?php echo base_url()?>absensi/isi" method="post">
              <div class="row">
                <div class="input-field col s6">
                  <input  name="nim" type="text" required>
                  <label for="nim">NIM</label>
                </div>
                <div class="input-field col s6">
                  <input name="password" type="password" required>
                  <label for="password">Password</label>
                </div>
              </div>
              <div class="row">
                <div class="field col s4">
                  <label for="tanggal_jaga">Tanggal Jaga</label>
                  <input id="tanggal_jaga" name="tanggal_jaga" type="date" value="<?php echo date('Y-m-d'); ?>" readonly>
                </div>
                <div class="field col s4">
                  <label for="jam_datang">Jam Datang</label>
                  <input id="jam_datang" name="jam_datang" type="time" required>
                </div>
                <div class="field col s4">
                  <label for="jam_selesai">Jam Selesai</label>
                  <input id="jam_selesai" name="jam_selesai" value="<?php date_default_timezone_set(" Asia/Bangkok ");	echo date("H:i:s "); ?>" readonly>
                </div>
              </div>
              <div class="row">
                <div class="field col s12">
                  <label for="jam_selesai">Aktivitas</label><br>
                  <input type="checkbox" class="checkbox" id="cagree1" name="cagree" data-error=".errorTxt9" />
                  <p>
                    <input type="checkbox" class="checkbox" id="melayani" name="kerja[]" value="1"><label for="melayani">Melayani Pembeli</label>
                  </p>
                  <p>
                    <input type="checkbox" class="checkbox" id="display" name="kerja[]" value="1"><label for="display">Display Barang</label>
                  </p>
                  <p>
                    <input type="checkbox" class="checkbox" id="menerima" name="kerja[]" value="1"><label for="menerima">Menerima Barang</label>
                  </p>
                  <p>
                    <input type="checkbox" class="checkbox" id="input" name="kerja[]" value="1"><label for="input">Input Barang</label>
                  </p>
		  <p>
                    <input type="checkbox" class="checkbox" id="bersih" name="kerja[]" value="1"><label for="bersih">Membersihkan Toko</label>
                  </p>
                </div>
              </div>
              <div class="row">
                <div class="input-field col s12 center">
                  <button class="btn cyan waves-effect waves-light" type="submit" name="submit">INPUT<i class=""></i></button>
                </div>
              </div>
            </form>

          </div>
        </div>
      </div>
    </div>
  </div>
</div>
