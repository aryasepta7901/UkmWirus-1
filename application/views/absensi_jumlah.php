<style media="screen">
  body {
    background: url(assets/images/bg2.png);
  }
</style>
<br/>
<div id="content-article">
  <div class="container">
    <div class="row row-pb-md">
      <div class="col s12 m12 l3">
        <div class="card center light-blue lighten-1">
          <div class="card-content">
            <!-- Foto profil disini-->
            <div class="card-image" style="margin:0 auto;">
              <img class="" src="<?php echo base_url()?>assets/images/boy.png">
            </div> <br>
            <hr>
            <div style="">
              <div class="">
                <br>
                <strong><?php echo $this->input->post('nim'); ?></strong><br/>
                <strong><?php echo $ket['0']->nama?></strong><br/>
                <strong><?php echo $ket['0']->divisi?></strong><br/>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col s12 m12 l9">
        <div class="card center" style="overflow-x:auto">
          <div class="card-content">
            <!-- Judul -->
            <br>
            <div class=" center card-title">Rekapan Absensi</div>
            <br>
            <table id="know" class="highlight">
              <thead class="text-center">
                <tr>
                  <th class="center">No</th>
                  <th class="center">Tanggal Jaga</th>
                  <th class="center">Jam Mulai</th>
                  <th class="center">Jam Selesai</th>
                  <th class="center">Kegiatan</th>
                </tr>
              </thead>
              <tbody class="text-left">
                <?php $no=1;
                 foreach($jumlah_absen as $row){
                   ?>
                <tr>
                  <td class="center">
                    <?php  echo $no;?>
                  </td>
                  <td class="center">
                    <?php echo $row->tanggal_jaga; ?>
                  </td>
                  <td class="center">
                    <?php echo $row->jam_datang; ?>
                  </td>
                  <td class="center">
                    <?php echo $row->jam_selesai; ?>
                  </td>
                  <td class="center">
                    <?php echo $row->pekerjaan_selama_jaga; ?>
                  </td>

                </tr>
                <?php
                 $no=$no+1;
               }
                 ?>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
<script src="http://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
