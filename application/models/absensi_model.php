<?php
defined('BASEPATH') OR exit('No direct script access allowed');
error_reporting(E_ERROR);

// public function __construct() {
//   $this->load->database();
//   // $this->load->helper('date');
// }

class Absensi_model extends CI_Model {

     public function isi_absen($namatabel,$data) {
       $insert = $this->db->insert($namatabel,$data);
       return $data;
     }

     public function cek_orang($nim, $password) {
       return $this->db->get_where('kopmer', array('nim' => $nim,'pass' =>$password))->num_rows();
     }

     public function cek_id($nim) {
       return $this->db->get_where('kopmer', array('nim' => $nim))->num_rows();
     }

     public function ambilnama($nim) {
       $this->db->select('*');
       $this->db->from('kopmer');
       $this->db->where('nim',$nim);
       $query = $this->db->get()->result();
       return $query;
     }

     public function cek_absen($nim){

       $this->db->select('nim,tanggal_jaga, jam_datang, jam_selesai, pekerjaan_selama_jaga')
       ->from('user')
       ->where('nim',$nim)
       ->order_by('tanggal_jaga', 'ASC');
       return $this->db->get()->result();

   	}


}
