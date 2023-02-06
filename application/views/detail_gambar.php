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
          
        <div class="col-lg-8">
          <div class="card shadow mb-4">
          <div class="card-body">
          <?php echo form_open_multipart('Admin/tambah'); ?>
            <div class="form-group">
            <label for="nama">Nama</label>
              <input type="text" name="nama_admin" class="form-control">
            </div>
          <div class="form-group">
						<label for="username">Username</label>
						<input type="text" name="username" class="form-control">
					</div>
          <div class="form-group">
						<label for="alamat">Alamat</label>
						<input type="text" name="alamat_admin" class="form-control">
					</div>
          <div class="form-group">
						<label for="email">Email</label>
						<input type="email" name="email_admin" class="form-control">
					</div>
          <div class="form-group">
						<label for="password">Password</label>
						<input type="password" name="password" class="form-control">
					</div>
          <div class="form-group">
						<label for="telepon">No. telepon</label>
						<input type="number" name="no_telepon" class="form-control">
					</div>
                    <div class="form-group">
						<label for="foto">Foto admin</label>
						<input type="file" name="foto_admin" class="form-control">
					</div>
            <button type="submit" name="submit" class="btn btn-success">Submit</button>
            <button type="reset" class="btn btn-warning">Reset</button>
          <?php echo form_close(); ?>   
                </div>
            </div>
         </div> 
        </section>
      </div>
      <!-- Footer -->
<?php $this->load->view("_partial/footer"); ?>

</div>   

<?php $this->load->view("_partial/js"); ?>