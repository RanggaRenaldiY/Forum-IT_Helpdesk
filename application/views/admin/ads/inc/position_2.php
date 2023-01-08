<div class="col-lg-6">
		<div class="panel-card ads-card">
			<div  class="panel-header"> Side Ad 1
				<p>(Ad displayed in the side bar of the Forum)</p>
			 </div>
			<div class="form-body">
			<form action="<?php echo base_url() ?>ads/new_ad" enctype="multipart/form-data" method="post">
				<div class="form-group  row">
						<div class="col-sm-4">
							<label for="">Ad Status</label>
							<span class="form-indicat">:</span>
						</div>
						<div class="col-sm-8 nins">
							<input <?php if($ads[1]->status == 'enable'){ echo 'checked'; } ?> value="enable"  type="radio" name="status" id=""> Enable &nbsp;&nbsp;
							<input <?php if($ads[1]->status == 'disable'){ echo 'checked'; } ?> value="disable" type="radio" name="status" id=""> Disable
						</div>
					</div>

					<div class="form-group  row">
						<div class="col-sm-4">
							<label for="">Ad Type</label>
							<span class="form-indicat">:</span>
						</div>
						<div class="col-sm-8 nins">
							<input <?php if($ads[1]->type == 'image'){ echo 'checked'; } ?> value="image"  v-on:change="change_type_1(2)"  type="radio" name="type" id="at2"> Image Ad &nbsp;&nbsp;
							<input <?php if($ads[1]->type == 'script'){ echo 'checked'; } ?> value="script"  v-on:change="change_type_1(2)"  type="radio" name="type" id="at"> Script Ad
						</div>
					</div>

					<div  id="image-ad2" class="<?php if($ads[1]->type != 'image'){ echo 'hid'; } ?>">
						<div class="form-group  row">
							<div class="col-sm-4">
								<label for="">Select Image</label>
								<span class="form-indicat">:</span>
							</div>
							<div class="col-sm-8">
								<input  type="file" class="form-control form-control-sm" name="userfile" id="">
                                <p class="rcm">Recommended image dimensions (500 x 300)</p>
							</div>
						</div>
					
						<div class="form-group  row">
							<div class="col-sm-4">
								<label for="">Redirect Link</label>
								<span class="form-indicat">:</span>
							</div>
							<div class="col-sm-8">
								<input value="<?php echo $ads[1]->link; ?>" placeholder="Enter Redirect Link" type="text" class="form-control form-control-sm" name="link" id="">
							</div>
						</div>
					</div>

					<div id="script-ad2" class="<?php if($ads[1]->type != 'script'){ echo 'hid'; } ?>">
						<div class="form-group  row">
							<div class="col-sm-4">
								<label for="">Add Script</label>
								<span class="form-indicat">:</span>
							</div>
							<div class="col-sm-8">
								<textarea class="form-control form-control-sm" name="script" id="" cols="30" rows="5"><?php echo $ads[1]->script; ?></textarea>
							</div>
						</div>
					
					</div>




				<div class="form-group no-margin-bottom row">
						<div class="col-sm-4">
							<input type="hidden" name="pos" value="2">
						</div>
						<div class="col-sm-8">
								<button  class="btn btn-primary btn-sm">Update Ad</button>
						</div>
				</div>

				</form>
			</div>
			
		</div>
	</div>