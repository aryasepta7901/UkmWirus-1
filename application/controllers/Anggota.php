<?php
defined('BASEPATH') OR exit('No direct script access allowed');
error_reporting(E_ERROR);

class Anggota extends CI_Controller {

  function __construct() {
    parent ::__construct();
    $this->load->library('pagination');
  }

     public function tambahpoin() {
         $this->load->view('template/PageHead');
         $this->load->view('template/Navbar');
         $this->load->view('anggota_tambahpoin');
         $this->load->view('template/PageEnd');
     }

     public function daftarpoin() {
         $this->load->view('template/PageHead');
         $this->load->view('template/Navbar');

         $jumlah_data = $this->anggota_model->jumlah_data();
         $config['base_url']=base_url().'anggota/daftarpoin';
         $config['total_rows'] = $jumlah_data;
         $config['per_page'] = 10;
         $from = $this->uri->segment(3);
         $this->pagination->initialize($config);
         $data['daftar_poinanggota']=$this->anggota_model->daftar_poinanggota($config['per_page'],$from);

         $this->load->view('anggota_poin',$data);
         $this->load->view('template/PageEnd');
     }


     public function daftar() {
         $this->load->view('template/PageHead');
         $this->load->view('template/Navbar');

         $jumlah_data = $this->anggota_model->jumlah_data();
         $config['base_url']=base_url().'rapat/rapat_jadwal';
         $config['total_rows'] = $jumlah_data;
         $config['per_page'] = 10;
         $from = $this->uri->segment(3);
         $this->pagination->initialize($config);
         $data['daftar_anggota']=$this->anggota_model->daftar_anggota($config['per_page'],$from);

         $this->load->view('anggota_daftar',$data);
         $this->load->view('template/PageEnd');
     }

     public function addpoin() {
       $id_anggota          = $this->input->post('id');
       $tanggal           = date('Y-m-d');
       $keterangan        = 'Poin Belanja';

       $verify = $this->anggota_model->cek_id($id_anggota);

       if ($verify==1) {
           $data = array(
             'id_anggota'       => $id_anggota,
             'tanggal'        => $tanggal,
             'keterangan'     => $keterangan
          );

          $insert = $this->anggota_model->add_poin('poinbelanja',$data);
          if($insert > 0){
            echo "<script>
              alert('1 Poin Belanja untuk $id_anggota telah ditambahkan!');
              window.location.href='tambahpoin';
              </script>";
          }else {
            echo "<script>
              alert('Gagal menambahkan Poin :(');
              window.location.href='tambahpoin';
              </script>";
          }
        } else { //kalau tidak hanya ada 1 akun, berarti salah
          echo "<script>
            alert('MAAF! Poin belum diinput. Periksa kembali ID ANGGOTA');
            window.location.href='tambahpoin';
            </script>";
        }

     }

}
