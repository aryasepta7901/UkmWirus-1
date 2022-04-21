<?php
defined('BASEPATH') OR exit('No direct script access allowed');
error_reporting(E_ERROR);

class Summary_model extends CI_Model {

  public function jumlah_data(){
   return $this->db->get_where('kopmer')->num_rows();
  }

    public function rekap_absensi($number,$offset){

      $this->db->select('k.nama, k.divisi, count(*) AS myCount')
      ->from('kopmer k, user u')
      ->where('k.nim = u.nim')
      ->group_by('k.nama', 'k.divisi')
      ->order_by('myCount', 'DESC');
      return $this->db->get()->result();
  	}


}
