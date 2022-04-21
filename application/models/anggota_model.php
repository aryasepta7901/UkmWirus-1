<?php
defined('BASEPATH') OR exit('No direct script access allowed');
error_reporting(E_ERROR);

// public function __construct() {
//   $this->load->database();
//   $this->load->helper('date');
// }

class Anggota_model extends CI_Model {

     public function add_poin($namatabel,$data) {
       $insert = $this->db->insert($namatabel,$data);
       return $data;
     }

     public function cek_id($id_anggota) {
       return $this->db->get_where('anggota', array('id_anggota' => $id_anggota))->num_rows();
     }

     public function jumlah_data(){
   		return $this->db->get_where('anggota')->num_rows();
   	}

    public function daftar_poinanggota($number,$offset){

      $this->db->select('a.id_anggota, a.nama, a.no_hp, a.email, count(*) AS myCount')
      ->from('anggota a, poinbelanja p')
      ->where('a.id_anggota = p.id_anggota')
      ->group_by('a.id_anggota', 'a.nama')
      ->order_by('a.id_anggota', 'ASC');

      return $this->db->get()->result();
  	}

    public function daftar_anggota($number,$offset){

      $this->db->select('*')
      ->from('anggota')
      ->order_by('id_anggota', 'ASC');

      return $this->db->get()->result();
  	}


}
