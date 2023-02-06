<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin_model extends CI_Model
{
    function getdata()
    {
        $query = $this->db->query("SELECT * FROM admin ORDER BY id_admin ASC");
        return $query->result();
    }
    
    function save($data){
        $tambah = $this->db->insert('admin', $data);
        return $tambah;
    }
    function getdatabyid($id_admin)
    {
        $query = $this->db->query("SELECT * FROM admin where id_admin = '$id_admin' ORDER BY id_admin ASC");
        return $query->result();
    }

    function update($data, $kondisi)
    {
        $this->db->where($kondisi);
        $this->db->update('admin',$data);
        return true;
    }

    function delete($kondisi)
    {
        $this->db->where($kondisi);
        $this->db->delete('admin');
        return true;
    }
}