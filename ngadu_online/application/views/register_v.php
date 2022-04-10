 <div class="container">

  <div class="card o-hidden border-0 shadow-lg my-5">
    <div class="card-body p-0">

      <!-- Nested Row within Card Body -->
      <div class="row">
        <div class="col-lg-5 d-none d-lg-block bg-register-image ">
          <br>

             <span><h1>
              <span>D</span>
               <span>A</span>
               <span>F</span>
               <span>T</span>
               <span>A</span>
               <span>R</span>
             </h1>
             <br>

             </span>
          <img src="<?= base_url('assets/') ?>img/aldi/regis.png" class=" col-lg-5 d-none d-lg-block">
           <link href="<?php echo base_url('assets/user/aldidesigneon/h1.css')?>" rel="stylesheet">
           <link href="<?php echo base_url('assets/user/aldidesigneon/h1.css')?>" rel="stylesheet">
   
   
        </div>
        <div class="col-lg-7">
          <div class="p-5">
            
            
            </div>

            <?= validation_errors('<div class="alert alert-danger alert-dismissible fade show" role="alert">','<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              </div>') ?>

              <?= $this->session->flashdata('msg'); ?>

              <?= form_open('Auth/RegisterController', 'class="user"') ?>
              <div class="form-group">
                <input type="text" class="form-control form-control-user" id="nik" placeholder="Masukan NIK" name="nik" value="<?= set_value('nik') ?>">
              </div>
              <div class="form-group">
                <input type="text" class="form-control form-control-user" id="nama" placeholder="Masukan Nama Lengkap" name="nama" value="<?= set_value('nama') ?>">
              </div>
              <div class="form-group">
                <input type="text" class="form-control form-control-user" id="username" name="username" placeholder="Masukan Username" value="<?= set_value('username') ?>">  
              </div>
              <div class="form-group">
                <input type="password" class="form-control form-control-user" id="password" name="password" placeholder="Masukan Password">
              </div>
              <div class="form-group">
                <input type="text" class="form-control form-control-user" id="telp" placeholder="Nomor Telepon" name="telp">
              </div>
              <button type="submit" class="btn btn-primary btn-user btn-block">DAFTAR</button>
            </form>
            <hr>
            <div class="text-center">
              <a class="small" href="<?= base_url('user') ?>">Sudah punya akun? LOGIN</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

</div>