<?php
defined('BASEPATH') OR exit('No direct script access allowed');
error_reporting(E_ERROR);

class Summary extends CI_Controller {

  function __construct() {
    parent ::__construct();
    $this->load->library('pagination');
  }

     public function index() {
         $this->load->view('template/PageHead');
         $this->load->view('template/Navbar');

         $jumlah_data = $this->summary_model->jumlah_data();
         $config['base_url']=base_url().'summary';
         $config['total_rows'] = $jumlah_data;
         $config['per_page'] = 10;
         $from = $this->uri->segment(3);
         $this->pagination->initialize($config);
         $data['rekap_absensi']=$this->summary_model->rekap_absensi($config['per_page'],$from);

         $this->load->view('summary',$data);
         $this->load->view('template/PageEnd');
     }


}
