<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<?php $this->load->view("_partial/header"); ?>

<div class="main-wrapper main-wrapper-1">
      

<?php $this->load->view("_partial/navbar"); ?>

<?php $this->load->view("_partial/sidebar"); ?>

      <!-- Main Content -->
      <div class="main-content">
        <section class="section">
          <div class="section-header">
            <h1>Dashboard</h1>
          </div>
          
          <div class="col-lg-12 col-md-12 col-12 col-sm-12">
              <div class="card">
                <div class="card-header">
                  <h4>Latest Posts</h4>
                  <div class="card-header-action">
                    <a href="<?php echo site_url('Admin/ftambah'); ?>" class="btn btn-primary">Tambah Admin</a>
                  </div>
                </div>
                <div class="card-body p-0">
                  <div class="table-responsive">
                    <table class="table table-striped mb-0" id="dataTable">
                      <thead>
                        <tr>
                          <th>#</th>
                          <th>Foto admin</th>
                          <th>Nama</th>
                          <th>Username</th>
                          <th>Alamat</th>
                          <th>Email</th>
                          <th>Password</th>
                          <th>No telepon</th>
                          <th>Opsi</th>
                        </tr>
                      </thead>
                      <?php $no = 1; foreach ($admin as $row): ?>
                      <tbody>                         
                        <tr>
                          <td><?php echo $no++; ?></td>
                          <td><img src ="<?php echo base_url('assets/foto_admin/') .$row->foto_admin; ?>" width="80px" height="90px"></td>
                          <td><?php echo $row->nama_admin; ?></td>
                          <td><?php echo $row->username; ?></td>
                          <td><?php echo $row->alamat_admin; ?></td>
                          <td><?php echo $row->email_admin; ?></td>
                          <td><?php echo $row->password; ?></td>
                          <td><?php echo $row->no_telepon; ?></td>
                          <td>
                            <a href= "<?php echo base_url(); ?>Admin/getedit/<?php echo $row->id_admin; ?>" class="btn btn-primary btn-action mr-1" data-toggle="tooltip" title="Edit"><i class="fas fa-pencil-alt"></i></a>
                            <a href= "<?php echo base_url(); ?>Admin/hapus/<?php echo $row->id_admin; ?>" class="btn btn-danger btn-action" data-toggle="tooltip" title="Delete" onclick="return confirm('Apakah data akan dihapus?')"><i class="fas fa-trash"></i></a>
                          </td>
                        </tr>
                      </tbody>
                      <?php endforeach ?>
                    </table>
                  </div>
                </div>
              </div>
            </div>
        </section>
      </div>
      <!-- Footer -->
<?php $this->load->view("_partial/footer"); ?>

</div>   

<?php $this->load->view("_partial/js"); ?>