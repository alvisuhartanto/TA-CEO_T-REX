<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Bantuan extends MY_Controller {

	public function pembayaran()
	{
		$this->load->view('pages/bantuan/pembayaran');
	}

    public function kontakperson()
	{
		$this->load->view('pages/bantuan/kontakperson');
	}

    public function pengiriman()
	{
		$this->load->view('pages/bantuan/pengiriman');
	}

    public function faq()
	{
		$this->load->view('pages/bantuan/faq');
	}

}
