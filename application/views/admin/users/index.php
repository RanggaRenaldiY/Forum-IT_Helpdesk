<!--  ************************* Page Title Starts Here ************************** -->
<div class="page-title row no-margin">
	<h4>View Users</h4>
	<ul>
		<li><a>Home <i class="fas fa-angle-double-right"></i></a></li>
		
		<li>View Users</li>
	</ul>
</div> <!-- Page Title End -->


<!--  ************************* View Users Starts Here ************************** -->
<div class="row body-content">

	<div id="vue-user" class="col-lg-12">
		<div class="panel-card">
			<div class="panel-header">Manage Users</div>
			<div class="table-body">
			
			<table id="table_id" class="display table">
					</table>

			</div>
      
		</div>
    <div class="modal fade" id="loginmodel" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
 <div class="modal-dialog login-model" role="document">
   <div class="modal-content">
    <div class="col-sm-2">
     <button onclick="account_signup()" class="btn btn-success btn-sm">Add User</button>
     </div>
      </div>
      </div>
      </div>
	</div>

</div><!-- View Users  End -->




 <!-- Sign Up Modal -->
 <div class="modal fade" id="signupmodel" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
 <div class="modal-dialog login-model singup-model" role="document">
   <div class="modal-content">
     <div class="modal-header">
       <h5 class="modal-title" id="exampleModalLabel">Sign Up</h5>
       <button type="button" class="close" data-dismiss="modal" aria-label="Close">
         <span aria-hidden="true">&times;</span>
       </button>
     </div>
     <div class="modal-body">
       <form onsubmit="return signup_submit()" method="post" action="<?php echo base_url() ?>users/add_users">
       <div class="row no-margin form-row">
           <div class="col-sm-4">
             <label for="">Full Name</label><span class="rit-coln">:</span>
           </div>
           <div class="col-sm-8">
             <input id="suname" type="text" name="name" placeholder="Enter Full Name" class="form-control form-control-sm">
             <div class="smart-valid" id="suname-err"></div>
           </div>
         </div>
         <div class="row no-margin form-row">
           <div class="col-sm-4">
             <label for="">Designation</label><span class="rit-coln">:</span>
           </div>
           <div class="col-sm-8">
             <input id="sudesig" type="text" name="designation" placeholder="Enter Designation" class="form-control form-control-sm">
             <div class="smart-valid" id="sudesig-err"></div>
           </div>
         </div>
         <div class="row no-margin form-row">
           <div class="col-sm-4">
             <label for="">Email Address</label><span class="rit-coln">:</span>
           </div>
           <div class="col-sm-8">
             <input v-on:blur="unic_email()" id="suemail" type="text" name="email_address" placeholder="Enter Email Address" class="form-control form-control-sm">
             <div class="smart-valid" id="suemail-err"></div>
           </div>
         </div>
         <div class="row no-margin form-row">
           <div class="col-sm-4">
             <label for="">Password</label><span class="rit-coln">:</span>
           </div>
           <div class="col-sm-8">
             <input id="supswd" name="password" type="password" placeholder="Enter Password" class="form-control form-control-sm">
             <div class="smart-valid" id="supswd-err"></div>
           </div>
         </div>
         <div class="row no-margin form-row">
           <div class="col-sm-4">
             <label for="">Confirmation</label><span class="rit-coln">:</span>
           </div>
           <div class="col-sm-8">
             <input id="suconfirm" type="password" placeholder="Password Confirmation" class="form-control form-control-sm">
             <div class="smart-valid" id="suconfirm-err"></div>
           </div>
         </div>
         <div class="row no-margin form-row">
           <div class="col-sm-4">

           </div>
           <div class="col-sm-8">
             <button  class="btn btn-sm btn-info"> Sign Up</button>
             <a onclick="show_login()" class="fp" href="">Have Account login</a>
           </div>
         </div>
        </form>
     </div>



   </div>
 </div>
</div><!-- Model Ends Here -->