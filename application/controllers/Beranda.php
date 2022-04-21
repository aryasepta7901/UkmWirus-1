 <?php
 defined('BASEPATH') OR exit('No direct script access allowed');
 error_reporting(E_ERROR);

 class Beranda extends CI_Controller {

      public function index() {
            // $this->load->model('m_berita');
            // $data['berita'] = $this->m_berita->get2Berita();

            $this->load->view('template/PageHead');
            // $this->load->view('template/Navbar');
            $this->load->view('beranda', $data);
            $this->load->view('template/PageEnd');
      }
 }
