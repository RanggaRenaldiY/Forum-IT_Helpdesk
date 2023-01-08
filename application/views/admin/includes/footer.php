<!-- ######## Chart Row End Here####### -->
<div class="footer-admin no-margin row">
	<p>Copyright &copy; 2022 IT Helpdesk</p>
</div>
</div>

<!-- ######## Footer End Here####### -->
</div>

</div>
</div>

<input type="hidden" id="b_url" value="<?php echo base_url() ?>">




<script src="<?php echo base_url() ?>assets/admin/js/jquery-3.2.1.min.js"></script>
<script src="<?php echo base_url() ?>assets/admin/js/popper.js"></script>
<script src="<?php echo base_url() ?>assets/admin/js/bootstrap.min.js"></script>
<script src="<?php echo base_url() ?>assets/js/axios.min.js"></script>
<script src="<?php echo base_url() ?>assets/js/notify.min.js"></script>
<script src="<?php echo base_url() ?>assets/js/vue.min.js"></script>

<script src="<?php echo base_url() ?>assets/admin/plugins/jquery.slimscroll.min.js"></script>

<script src="<?php echo base_url() ?>assets/admin/plugins/peity/jquery.peity.min.js"></script>

<script src="<?php echo base_url() ?>assets/admin/plugins/chart-js/Chart.min.js"></script>


<script src="<?php echo base_url() ?>assets/admin/plugins/data-table/datatables.min.js"></script>



<script src="<?php echo base_url() ?>assets/admin/js/script.js"></script>


<?php
if(!empty($this->vue)){
 foreach ($this->vue as $vue) {  ?>
			<script src="<?php echo base_url() ?>assets/admin/<?php echo $vue;  ?>"></script>
<?php } } ?>

</body>

</html>
