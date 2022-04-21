<?php
defined('BASEPATH') OR exit('No direct script access allowed');
error_reporting(E_ERROR);

class Absensi extends CI_Controller {

     public function index() {
         $this->load->model('Absensi_model');
         $this->load->view('template/PageHead');
         $this->load->view('template/Navbar');
         $this->load->view('absensi_isi');
         $this->load->view('template/PageEnd');
     }

     public function isi() {
       $nim          = $this->input->post('nim');
       $password     = $this->input->post('password');
       $tanggal_jaga = $this->input->post('tanggal_jaga');
       $jam_datang   = $this->input->post('jam_datang');
       $jam_selesai  = $this->input->post('jam_selesai');
       $pekerjaanku  = 0.0;
       foreach($this->input->post('kerja') as $activity)
       {
             $pekerjaanku += $activity;
       }
       $pekerjaan	= $pekerjaanku;

       // $pengenal = array('nim' => $nim, 'pass' => $password);
       $verifikasi = $this->absensi_model->cek_orang($nim, $password);
       // $cek = $this->absensi_model->cek_orang('kopmer',$pengenal);

       if ($verifikasi==1) {
         $data = array(
    			'nim'                   => $nim,
    			'pass'                  => $password,
          'tanggal_jaga'          => $tanggal_jaga,
          'jam_datang'            => $jam_datang,
          'jam_selesai'           => $jam_selesai,
          'pekerjaan_selama_jaga' => $pekerjaan
  			 );

        $insert = $this->absensi_model->isi_absen('user',$data);
        if($insert > 0){
          echo "<script>
            alert('Hi $nim, absensimu sudah terekam! Terima kasih atas kerja kerasnya hari ini :)');
            window.location.href='index';
            </script>";
        }else {
          echo "Gagal";
        }
       } else { //kalau tidak hanya ada 1 akun, berarti salah
         echo "<script>
           alert('MAAF! Absensimu belum terekam. Periksa kembali NIM dan PASSWORD mu :)');
           window.location.href='index';
           </script>";
       }


     }

     public function cek() {
         $this->load->view('template/PageHead');
         $this->load->view('template/Navbar');
         $this->load->view('absensi_cek');
         $this->load->view('template/PageEnd');
     }

     public function cek_absensi() {
       $nim         = $this->input->post('nim');

       $verify = $this->absensi_model->cek_id($nim);

       if ($verify==1) {
         $data['jumlah_absen']  = $this->absensi_model->cek_absen($nim);
         // echo $nim;
         $data['ket'] = $this->absensi_model->ambilnama($nim);
         // echo $nama;
         // $dati = array('jumla',)

         $this->load->view('template/PageHead');
         $this->load->view('template/Navbar');
         $this->load->view('absensi_jumlah', $data);
         $this->load->view('template/PageEnd');

        } else { //kalau tidak hanya ada 1 akun, berarti salah
          echo "<script>
            alert('MAAF! NIM SALAH. Periksa kembali NIM Anda');
            window.location.href='cek';
            </script>";
        }



     }





}
