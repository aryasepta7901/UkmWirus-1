<script type="text/javascript">
  $(document).ready(function() {
    $('#know').DataTable({
      initComplete: function () {
        responsive: true;
        this.api().columns([2]).every( function () {
          var column = this;
          var select = $('<select class="form-control"><option value=""></option></select>')
          .appendTo( $(column.footer()).empty() )
          .on( 'change', function () {
            var val = $.fn.dataTable.util.escapeRegex(
              $(this).val()
              );

            column
            .search( val ? '^'+val+'$' : '', true, false )
            .draw();
          } );

          column.data().unique().sort().each( function ( d, j ) {
            select.append( '<option value="'+d+'" style = "color:black;">'+d+'</option>' )
          } );
        } );
      }

    });
  });

</script>

<style media="screen">
  body {
    background: url(assets/images/bg2.png);
  }
</style>

<br/>
<div class="container">
  <div class="card">
    <div class="card-content">
      <span class="card-title center">Daftar Anggota</span>
      <br>
      <table id="know" class="table table-striped highlight">
        <thead>
          <tr>
            <th class="center">ID Anggota</th>
            <th class="center">Nama</th>
            <th class="center">Nomor HP</th>
            <th class="center">Email</th>
          </tr>
        </thead>
        <tbody class="text-left">
          <?php
            foreach($daftar_anggota as $row){
              ?>
            <tr>
              <td class="center">
                <?php echo $row->id_anggota; ?>
              </td>
              <td class="">
                <?php echo $row->nama; ?>
              </td>
              <td class="center">
                <?php echo $row->no_hp; ?>
              </td>
              <td class="center">
                <?php echo $row->email; ?>
              </td>

            </tr>
            <?php
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
