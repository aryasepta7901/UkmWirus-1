<style media="screen">
  body {
    background: url(assets/images/bg2.png);
  }
</style>

<br/>
<div class="container">
  <div class="card">
    <div class="card-content">
      <span class="card-title center">Summary Absensi</span>
      <br>
      <table id="know" class="table table-striped highlight">
        <thead>
          <tr>
            <th class="center">No</th>
            <th class="center">Nama</th>
            <th class="center">Divsi</th>
            <th class="center">Jumlah Absensi</th>
          </tr>
        </thead>
        <tbody class="text-left">
          <?php $no=1;
            foreach($rekap_absensi as $row){
              ?>
            <tr>
              <td class="center"><?php  echo $no;?></td>
              <td class="center">
                <?php echo $row->nama; ?>
              </td>
              <td class="center">
                <?php echo $row->divisi; ?>
              </td>
              <td class="center">
                <?php echo $row->myCount; ?>
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

<script type="text/javascript">
  $(document).ready(function() {
    $('select').material_select();
  });
</script>
