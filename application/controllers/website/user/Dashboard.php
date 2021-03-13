<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

    public function __construct(){
          parent::__construct();
    }

    /*
    |
    | START FUNCTION IN THIS CONTROLLER
    |
    */

    /*
    |  Structure View
    |
    |  $this->load->view('website/_template/header'); -->head (must - include css main)
    |  $this->load->view('website/ujian/css'); --> css additional (flexible)
    |  $this->load->view('website/_template/content'); --> content body (must)
    |  $this->load->view('website/_template/menu'); --> Header menu main (flexible - can replace)
    |  $this->load->view('website/ujian/content_dashboard'); --> content web (must)
    |  $this->load->view('website/_template/js_main'); --> js main (must)
    |  $this->load->view('website/ujian/js'); --> js additional (flexible)
    |  $this->load->view('website/_template/footer'); --> content body (must)
    |
    |  EDIT CODE DIBAWAH INI UNTUK MENGGANTI STRUKTUR PEMANGGILAN VIEW / DESIGN
    |
    */

    private function _generate_view($view, $data){
        $this->load->view('website/_template/header', $data['title_header']);
        $this->load->view($view['css_additional']);
        $this->load->view('website/_template/content');
        $this->load->view($view['menu_header']);
        $this->load->view($view['content'], $data['content']);
        $this->load->view('website/_template/js_main');
        $this->load->view($view['js_additional']);
        $this->load->view('website/_template/footer');
    }

    /*
    |
    | END FUNCTION IN THIS CONTROLLER
    |
    */

    public function index(){ //
        //for passing data to view
        $data['content'] = [];
        $data['title_header'] = ['title' => 'Daftar Sesi Ujian'];

        //for load view
        $view['css_additional'] = 'website/user/dashboard/css';
        $view['menu_header'] = 'website/_template/menu';
        $view['content'] = 'website/user/dashboard/content';
        $view['js_additional'] = 'website/user/dashboard/js';

        //get function view website
        $this->_generate_view($view, $data);
    }

}