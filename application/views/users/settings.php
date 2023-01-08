<!--***************************** Body Starts Here *****************************-->
<div class="body-content">
	<div class="container">
		<div class="row">
			<!-- ##########-- Right Menu Starts Here ##########-->
			<div class="col-md-3 no-padding profile-cover">

				<?php $this->load->view('users/inc/user_menu'); ?>

			</div>
			<!------- Right Menu End Here ------->

			<!-- ##########-- Dashboard Starts Here ##########-->
			<div id="user-settings-vue" class="col-md-6 settin-user fpd">

				<div class="setting-card">


					<ul class="nav nav-tabs" id="myTab" role="tablist">
						<li class="nav-item">
							<a class="nav-link active" id="home-tab" data-toggle="tab" href="#basic" role="tab" aria-controls="home"
							 aria-selected="true">My Info</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" id="profile-tab" data-toggle="tab" href="#passwordtab" role="tab" aria-controls="profile"
							 aria-selected="false">Change Password</a>
						</li>

					</ul>
					<div class="tab-content" id="myTabContent">
						<div  class="tab-pane fade show active" id="basic" role="tabpanel" aria-labelledby="home-tab">

							<div class="row no-margin form-row">
								<div class="col-sm-4"><label for="">Full Name</label><span class="rit-coln">:</span></div>
								<div class="col-sm-8"><input value="<?php echo $this->single->name ?>" id="usname" type="text" placeholder="Enter Full Name" class="form-control form-control-sm">
									<div id="loemail-err" class="smart-valid"></div>
								</div>
							</div>
							<div class="row no-margin form-row">
								<div class="col-sm-4">
								
								</div>
								<div class="col-sm-8">
									<button v-on:click="changeDetails()" class="btn btn-info btn-sm">Change Info</button>
								</div>
							</div>

						</div>
						<div class="tab-pane fade" id="passwordtab" role="tabpanel" aria-labelledby="profile-tab">

							<div class="row no-margin form-row">
								<div class="col-sm-5"><label for="">Old Password</label><span class="rit-coln">:</span></div>
								<div class="col-sm-7"><input id="usoldpswd" type="password" placeholder="Enter Old Password" class="form-control form-control-sm">
									<div id="loemail-err" class="smart-valid"></div>
								</div>
							</div>
							<div class="row no-margin form-row">
								<div class="col-sm-5"><label for="">New Password</label><span class="rit-coln">:</span></div>
								<div class="col-sm-7"><input id="usnewpswd" type="password" placeholder="Enter New Password" class="form-control form-control-sm">
									<div id="loemail-err" class="smart-valid"></div>
								</div>
							</div>

							<div class="row no-margin form-row">
								<div class="col-sm-5"><label for="">Confirm Password</label><span class="rit-coln">:</span></div>
								<div class="col-sm-7"><input id="usconpswd" type="password" placeholder="Confirm Password" class="form-control form-control-sm">
									<div id="loemail-err" class="smart-valid"></div>
								</div>
							</div>

							<div class="row no-margin form-row">
								<div class="col-sm-5"></div>
								<div class="col-sm-7">
									<button v-on:click="changePassword()" class="btn btn-info btn-sm">Change Password</button>
								</div>
							</div>


						</div>

					</div>
				</div>


			</div>
			<!------- Dashboard Ends Here ------->


		</div>
	</div>
</div>
<!------- Body Content Ends Here ------->
