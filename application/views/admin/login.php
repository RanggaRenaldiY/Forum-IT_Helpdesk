<!doctype html>
<html lang="id">

<head>

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title> Forum Helpdesk Admin</title>

    <link rel="stylesheet" href="<?php echo base_url() ?>assets/admin/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?php echo base_url() ?>assets/admin/css/themify-icons.css">
    <link rel="stylesheet" href="<?php echo base_url() ?>assets/admin/css/fontawsom-all.min.css">
    <link rel="stylesheet" href="<?php echo base_url() ?>assets/admin/css/simple-line-icons.css">
    <link rel="stylesheet" href="<?php echo base_url() ?>assets/vplugins/v-map/jqvmap.min.css">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>assets/admin/css/style.css" />
</head>

<body>

    <div class="container-fluid h-100">
		<div class="oter-header">
			<div class="container-fluid">
				<div class="row no-margin">
				<div class="col-sm-3">
				
				<img src="<?php echo base_url() ?>upload/admin/logoforum.png?<?php echo date("Ymd");?>" alt="">
				
				</div>
				</div>
			</div>
		</div>
        <div class="row no-margin h-100">

          <div class="col-xl-4 col-lg-5 col-md-6 col-sm-10 login-cover">
          	<div class="login-box">
          		<div class="logo-cover d-flex align-items-center">
          			
          			<strong> Admin login</strong>


          		</div>
          		<div class="row">
					  <?php if(!empty($this->err)): ?>
					  <p id="login-err">Username or Password Wrong</p>
					<?php endif; ?>
          				<form method="post" onsubmit="return validatLogin()" action="<?php echo base_url() ?>admin/logincheck">
							<div class="form-group">
							   <div class="position-relative has-icon-right">
								  <label for="exampleInputUsername" class="sr-only">Username</label>
								  <input type="text" id="logname" name="name" class="form-control " placeholder="Username">
								  <div class="smart-valid" id="logname-err"></div>
								  <div class="form-control-position">
									  <i class="icon-user"></i>
								  </div>
							   </div>
							  </div>
							  <div class="form-group">
							   <div class="position-relative has-icon-right">
								  <label for="exampleInputUsername" class="sr-only">Password</label>
								  <input type="password" id="logpswd" name="pswd" class="form-control " placeholder="Enter Password">
								  <div class="smart-valid" id="logpswd-err"></div>
								  <div class="form-control-position">
									  <i class="icon-lock"></i>
								  </div>
							   </div>
							  </div>
							  <div class="form-group align-right">
							  	<p><a href="<?php echo base_url() ?>admin/reset_password">Reset Password ?</a> 	</p>
							  </div>
							   <div class="form-group align-right">
							   	<button class="btn  btn-primary btn-round">
							   		Sign IN
							   	</button>
							  </div>
						</form>
          			</div>
          	</div>
          </div>


        </div>
    </div>

    <script src="<?php echo base_url() ?>assets/admin/js/jquery-3.2.1.min.js"></script>
    <script src="<?php echo base_url() ?>assets/admin/js/popper.js"></script>
    <script src="<?php echo base_url() ?>assets/admin/js/bootstrap.min.js"></script>

    <script src="<?php echo base_url() ?>assets/admin/plugins/jquery.slimscroll.min.js"></script>

    <script src="<?php echo base_url() ?>assets/admin/plugins/peity/jquery.peity.min.js"></script>

    <script src="<?php echo base_url() ?>assets/admin/plugins/v-map/sample-data.js"></script>
    <script src="<?php echo base_url() ?>assets/admin/plugins/v-map/jquery.vmap.min.js"></script>
    <script src="<?php echo base_url() ?>assets/admin/plugins/v-map/jquery.vmap.world.js"></script>

    <script src="<?php echo base_url() ?>assets/admin/plugins/chart-js/Chart.min.js"></script>

    <script src="<?php echo base_url() ?>assets/admin/js/script.js"></script>
</body>

</html>
