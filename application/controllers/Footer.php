<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Footer extends MY_Controller {

	public function about()
	{
		$this->load->view('pages/footer/about');
	}

	public function sk()
	{
		$this->load->view('pages/footer/sk');
	}
}
