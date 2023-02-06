<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Admin_model');
	}
	
	public function index()
	{
		$data['admin'] = $this->Admin_model->getdata();
		$this->load->view('admin/data_admin', $data);
	}

    public function ftambah() {
        $data = array(
          'title' => "Form Tambah"
        );
        $this->load->view('admin/tambah', $data);
      }

	public function tambah()
    {
        $id_admin = $this->input->post('id_admin');
        $nama_admin = $this->input->post('nama_admin');
        $username = $this->input->post('username');
        $alamat_admin = $this->input->post('alamat_admin');
        $email_admin = $this->input->post('email_admin');
        $password = $this->input->post('password');
        $no_telepon = $this->input->post('no_telepon');
        $foto_admin = $_FILES['foto_admin'];
        if ($foto_admin=''){}else{
            $config['upload_path']      = './assets/foto_admin';
            $config['allowed_types']    = 'gif|jpg|png';

            $this->load->library('upload', $config);
            if(!$this->upload->do_upload('foto_admin')){
                echo "Upload Gagal"; die();
            }else{
                $foto_admin= $this->upload->data('file_name');
            }

        }

        $data = array(
            'id_admin' => $id_admin,
            'nama_admin' => $nama_admin,
            'username' => $username,
            'alamat_admin' => $alamat_admin,
            'email_admin' => $email_admin,
            'password' => $password,
            'no_telepon' => $no_telepon,
            'foto_admin' => $foto_admin,
        );

        $save = $this->Admin_model->save($data);
        if($save){
            redirect('Admin','refresh');
        }else{
            echo 'Data gagal Disimpan';
        }
    }

    public function getedit($id_admin) 
    {
        $data['dataedit'] = $this->Admin_model->getdatabyid($id_admin);
        $this->load->view('admin/edit', $data);
    }

    public function editdata()
    {
        $id_admin = $this->input->post('id_admin');
        $nama_admin = $this->input->post('nama_admin');
        $username = $this->input->post('username');
        $alamat_admin = $this->input->post('alamat_admin');
        $email_admin = $this->input->post('email_admin');
        $password = $this->input->post('password');
        $no_telepon = $this->input->post('no_telepon');

        $data = array(
            'nama_admin' => $nama_admin,
            'alamat_admin' => $alamat_admin,
            'email_admin' => $email_admin,
            'no_telepon' => $no_telepon,
            'username' => $username,
            'password' => $password,
        );
        $kondisi = array(
            'id_admin' => $id_admin,
        );

        $update = $this->Admin_model->update($data, $kondisi);
        if($update){
            redirect('Admin','refresh');
        }else{
            echo 'Data gagal Disimpan';
        }
    }

    function hapus($id_admin)
    {
        $kondisi = array(
            'id_admin' => $id_admin,
        );

        $delete = $this->Admin_model->delete($kondisi);
        if($delete){
            redirect('Admin','refresh');
        }else{
            echo 'Data gagal Disimpan';
        }
    }
}