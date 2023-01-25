<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Informasi extends MY_Controller {

	public function about()
	{
		$this->load->view('pages/informasi/about');
	}

	public function sk()
	{
		$this->load->view('pages/informasi/sk');
	}

	public function kebijakan()
	{
		$this->load->view('pages/informasi/kebijakan');
	}

	public function programreseller()
	{
		$this->load->view('pages/informasi/programreseller');
	}
}
