<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Drag and Drop with Mozilla</title>
	
		
	<!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	
	<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
  
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script src="https://raw.githack.com/SortableJS/Sortable/master/Sortable.js"></script>
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/NicEdit/0.93/nicEdit.min.js"></script>
	
	<!-- source code followed : http://www.marcorpsa.com/ee/t1154.html -->
	<link rel="stylesheet" href="http://www.marcorpsa.com/ee/plugins/fancybox/jquery.fancybox.css" type="text/css" media="screen"/> 
	<link rel="stylesheet" href="http://www.marcorpsa.com/ee/plugins/fancybox/helpers/jquery.fancybox-buttons.css?v=1.0.5" type="text/css" media="screen" /> 
	<script src="http://www.marcorpsa.com/ee/plugins/fancybox/jquery.fancybox.js"></script>
	<script type="text/javascript" src="http://www.marcorpsa.com/ee/plugins/fancybox/helpers/jquery.fancybox-buttons.js?v=1.0.5"></script>
	<script type="text/javascript" src="http://www.marcorpsa.com/ee/plugins/fancybox/helpers/jquery.fancybox-media.js?v=1.0.6"></script>
	<script>
	$(function() {  $(".fancybox").fancybox({  'type' : 'iframe' });		  });
	  
	</script>
	 <style>
		
		.dropzone{
			border:1px black dashed; 
			background-color: white;
			min-height:30px;
		}
		
		.list-group .list-group-item {
		  border-radius: 0;
		  cursor: move;
		}

		.list-group .list-group-item:hover {
		  background-color: #f7f7f7;
		}


a#addTabBtn:hover,
a#addTabBtn:focus 
   {
    border-color: transparent;
    box-shadow:transparent;
}

a#addTabBtn {
    border-top-left-radius: 0;
    border-top-right-radius: 0;
}

	</style>

	<style>
#divfields_list 
{
     /*position: fixed;*/
	   overflow-y: scroll; 
	   height:550px;
	   width:100%;
	 	   /*margin-top: -18%;*/
}
	#sidepanel{
/*		width:240px;*/
		margin-left:5px;
	}	
	#divfields_list2 
{
     /*position: fixed;*/
	   overflow-x: scroll; 
	   overflow-y: ;
	   height:100px;
	   width:100%;
	 	   /*margin-top: -18%;*/
}
	#sidepanel2{
/*		width:240px;*/
		margin-left:5px;
	}
	#divfields_list::-webkit-scrollbar {
  width: 5px;

  margin-left: 10px;
}
#divfields_list::-webkit-scrollbar-track {
  background-color: transparent;

}
#divfields_list::-webkit-scrollbar-thumb {
   box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
   background-color:  rgba(12, 99, 228, 0.8);
   border-radius: 5px;
   max-height: 5px;
}
	#sortablelist{
		min-height: 550px;
	}
	.nicEdit-panelContain:has(div){
		width: 100%;
	}
	.mobile-menu{
		display: none;
	}
@media (max-width: 575px) {
  .window-menu {
    display: none;
  }
  .mobile-menu {
    display: block;
  }
}

.myPlaceholder{
  margin-top: 80px;
  }
  .bottomSpace{
  	padding-bottom: 80px;
  }

  

</style>

  </head>
  <body>

  <?php error_reporting(E_ALL && ~E_WARNING && ~E_NOTICE);  ?>
	<div class="container-fluid " >
	
	<ul class="nav nav-tabs" id="myTab" role="tablist">
	
  <div class="nav-item" role="presentation">
    <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home-tab-pane" type="button" role="tab" aria-controls="home-tab-pane" aria-selected="true">Module Info</button>
  </div>
  <div class="nav-item" role="presentation">
    <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile-tab-pane" type="button" role="tab" aria-controls="profile-tab-pane" aria-selected="false">Module Items</button>
  </div>
  
</ul>


<div class="tab-content" id="myTabContent">
  <div class="tab-pane fade show active" id="home-tab-pane" role="tabpanel" aria-labelledby="home-tab" tabindex="0">
  <div class="container mt-5" >
		<div class="row " >
								
			<!-- Column -->
			<div class="col-6">
					<input type="hidden"  name="moduleid"  id="moduleid"  value="<?php echo $moduleid; ?>" />
					<input type="hidden"  name="userid"  id="userid"  value="<?php echo $usrid; ?>" />
					
					<label class="strong">Module Name</label>
					<input type="text"  name="module_name"  id="module_name" class="form-control" value="" required />
					<?php echo '<p style="color:red;font-size:12px;">'.$error['module_name'].'</p>'; ?>
					
					<label class="strong">Module Type</label>
					<select  name="module_type"  id="module_type" class="form-control"  required >
						<option value="">--Select--</option>
						<option value="application" <?php if($module_type == 'application'){ echo ' selected '; } ?> >Application</option>
						<option value="lookup" <?php if($module_type == 'lookup'){ echo ' selected '; } ?> >Lookup</option>
						<option value="submodule" <?php if($module_type == 'submodule'){ echo ' selected '; } ?> >Sub-Module</option>
					</select>
					<?php echo '<p style="color:red;font-size:12px;">'.$error['module_type'].'</p>'; ?>
					
				

					<?php /* ?>
					<label class="strong">Application</label>
					
					<?php $sqlapplic = "select * from applications where active='Y' and clientid='".$clientid."'";
					/// check user allowed applications here ... use join with existing query
					$resapplic = mysqli_query($dbcon, $sqlapplic);
					
		
					?>
					<select  name="application"  id="application" class="form-control" required >
						<option value="2">--Select--</option>
						<?php while($rowapplic = mysqli_fetch_assoc($resapplic)){ ?>
							<option value="<?php echo $rowapplic['id']; ?>" <?php if($application == $rowapplic['id']){ ?> SELECTED <?php } ?> ><?php echo $rowapplic['appdescr']; ?></option>
						<?php } ?>
					</select>
					
					<?php echo '<p style="color:red;font-size:12px;">'.$error['application'].'</p>'; ?>
					<?php */ ?>

					
				
					
				
			</div>
			<!-- // Column END -->
			
			<!-- Column -->
			<div class="col-6">
				
				
					
					<label class="strong">Description / Comments</label>
					<textarea  name="module_descr"  id="module_descr" class="form-control" ><?php echo $mdule_descr; ?></textarea>
					<?php echo '<p style="color:red;font-size:12px;">'.$error['module_descr'].'</p>'; ?>
					

					<label class="strong">
						<input type="checkbox"  name="show_menu"  id="show_menu"  value="Y" checked />
					Show on Menu</label>
					<?php echo '<p style="color:red;font-size:12px;">'.$error['show_menu'].'</p>'; ?>
					
					<label class="strong">
						<input type="checkbox"  name="frontend_module"  id="frontend_module"  value="Y" checked />
					Display at front-end </label>
					<?php echo '<p style="color:red;font-size:12px;">'.$error['frontend_module'].'</p>'; ?>
					
					

					<?php /* ?>
					<label class="strong">Generate Page for Add record</label>
					<select name="add_page"  id="add_page" class="form-control" >
						<option value="Y" <?php if($add_page=='Y'){ echo 'selected'; } ?> >Yes</option>
						<option value="N" <?php if($add_page=='N'){ echo 'selected'; } ?> >No</option>
					</select>
					<?php echo '<p style="color:red;font-size:12px;">'.$error['add_page'].'</p>'; ?>
					
					<label class="strong">Generate Page for Edit record</label>
					<select name="edit_page"  id="edit_page" class="form-control" >
						<option value="Y" <?php if($edit_page=='Y'){ echo 'selected'; } ?> >Yes</option>
						<option value="N" <?php if($edit_page=='N'){ echo 'selected'; } ?> >No</option>
					</select>
					<?php echo '<p style="color:red;font-size:12px;">'.$error['edit_page'].'</p>'; ?>
					
					<label class="strong">Generate Page for Duplicate record</label>
					<select name="duplicate_page"  id="duplicate_page" class="form-control" >
						<option value="Y" <?php if($duplicate_page=='Y'){ echo 'selected'; } ?> >Yes</option>
						<option value="N" <?php if($duplicate_page=='N'){ echo 'selected'; } ?> >No</option>
					</select>
					<?php echo '<p style="color:red;font-size:12px;">'.$error['duplicate_page'].'</p>'; ?>
					
					<label class="strong">Generate Page for View record</label>
					<select name="view_page"  id="view_page" class="form-control" >
						<option value="Y" <?php if($view_page=='Y'){ echo 'selected'; } ?> >Yes</option>
						<option value="N" <?php if($view_page=='N'){ echo 'selected'; } ?> >No</option>
					</select>
					<?php echo '<p style="color:red;font-size:12px;">'.$error['view_page'].'</p>'; ?>
					
					
					<input type="hidden" name="list_page" id="list_page" value="Y" />
					
					<?php */ ?>
				
				
			</div>
			
			
		</div>
	</div>
				


  </div>
  <div class="tab-pane fade" id="profile-tab-pane" role="tabpanel" aria-labelledby="profile-tab" tabindex="0">
  	<!-- Mobile Menu Starts here -->
  
		  <!-- <div class="row" style=" margin-top:20px; margin-right: 10px;">
		    <div class="col-sm-12 mobile-menu" style=" background-color:white">
		      <div id="divfields_list2" style="display:block;" >
						<div id="sidepanel2" class="draggable content" >
							<?php include('toppanel.php'); ?>
						</div>
						<div class="container" style="margin-top:30px">
								<div class="d-grid gap-2">
										<input type="button" class="btn btn-info btn-sm" onClick="javascript:show_code();" value="Show Code" />	
										<input type="button" class="btn btn-success btn-sm" onClick="javascript:save_module();" value="Submit" />
								</div>
						</div>
					</div>
		    </div>
		  </div> -->

  <!-- Mobile Menu Ends here -->
  <div class="row" style="margin-top:20px;margin-right: 10px;">
    <div class="col-sm-4 col-md-3 col-lg-3 window-menu" style="background-color:white">
      <div id="divfields_list" style="display:block;margin-left:-10px;" >
				<div id="sidepanel" class="draggable content" >
					<?php include('sidepanel.php'); ?>
				</div>
				<div class="container" style="margin-top:30px">
						<div class="d-grid gap-2">
								<input type="button" class="btn btn-info btn-sm" onClick="javascript:show_code();" value="Show Code" />	
								<input type="button" class="btn btn-success btn-sm" onClick="javascript:save_module();" value="Submit" />
						</div>
				</div>
			</div>
    </div>
    <div id="sortablelist" class="dropzone col-sm-8 col-md-9 col-lg-9 list-group content-parent" style="min-height:250px; background-color:#F9F9F9; border:1px black dashed; min-height: 550px;"  > 
	  </div>
  </div>

		<div style="display:block;" class="fancybox">
			<div id="contentdiv"  ></div>
		</div>

	
		<div id="source_code"  ></div>
		<div id="form_code"  ></div>
	
  
  </div>
  
  

</div>



  
</div>


	<footer>
     
	</footer>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script> 


	 <!-- sub-modules with tab script starts here -->


 
<!-- sub-modules with tab script ends here -->


	<script>

		new Sortable(sortablelist, {
			animation: 150,
			 ghostClass: 'blue-background-class'
		});
		
		
		
		function updateItem(){
					//$.fancybox.close();
					
			if (document.getElementById('divid').value) {	
				var vdivid = document.getElementById('divid').value;
			}else {
				var vdivid = 'NA';
			}	
			
			
			if (document.getElementById('module_name')) {	
				var vmodule_name = document.getElementById('module_name').value;
			}else {
				var vmodule_name = '';
			}
			
			if (document.getElementById('fieldid')) {
				var vfieldid = document.getElementById('fieldid').value;
			}else {
				var vfieldid = '';
			}
			
			if (document.getElementById('itemtype')) {
				var vitemtype = document.getElementById('itemtype').value;
			}else {
				var vitemtype = '';
			}
			if (document.getElementById('display_pos')) {
				var vdisplay_pos = document.getElementById('display_pos').value;
			}else {
				var vdisplay_pos = '';
			}
			
			if (document.getElementById('field_label')) {
				var vfield_label = document.getElementById('field_label').value;
			}else {
				var vfield_label = '';
			}
			if (document.getElementById('field_name')) {
				var vfield_name = document.getElementById('field_name').value;
			}else {
				var vfield_name = '';
			}
			if (document.getElementById('field_type')) {
				var vfield_type = document.getElementById('field_type').value;
			}else {
				var vfield_type = '';
			}
			if (document.getElementById('isrequired')) {
				var visrequired = document.getElementById('isrequired').value;
			}else {
				var visrequired = '';
			}
			
			if (document.getElementById('vdisplay_seq')) {
				var vdisplay_seq = document.getElementById('vdisplay_seq').value;
			}else {
				var vdisplay_seq = '';
			}
			if (document.getElementById('default_value')) {
				var vdefault_value = document.getElementById('default_value').value;
			}else {
				var vdefault_value = '';
			}
			if (document.getElementById('range_min')) {
				var vrange_min = document.getElementById('range_min').value;
			}else {
				var vrange_min = '';
			}
			if (document.getElementById('range_max')) {
				var vrange_max = document.getElementById('range_max').value;
			}else {
				var vrange_max = '';
			}
			if (document.getElementById('item_values')) {
				var vitem_values = document.getElementById('item_values').value;
			}else {
				var vitem_values = '';
			}
			if (document.getElementById('list_type')) {
				var vlist_type = document.getElementById('list_type').value;   
			}else {
				var vlist_type = '';
			}
			if (document.getElementById('staticlist')) {
				var vstaticlist = document.getElementById('staticlist').value;  
			}else {
				var vstaticlist = '';
			}
			if (document.getElementById('codelist')) {
				var vcodelist = document.getElementById('codelist').value;
			}else {
				var vcodelist = '';
			}
			if (document.getElementById('newcodelist')) {
				var vnewcodelist = document.getElementById('newcodelist').value;
			}else {
				var vnewcodelist = '';
			}
			if (document.getElementById('listmodulename')) {
				var vlistmodulename = document.getElementById('listmodulename').value;
			}else {
				var vlistmodulename = '';
			}
			if (document.getElementById('listmoduleitem')) {
				var  vlistmoduleitem = document.getElementById('listmoduleitem').value;
			}else {
				var vlistmoduleitem = '';
			}
			if (document.getElementById('onlistpag')) {
				var  vonlistpag = document.getElementById('onlistpag').value;  
			}else {
				var vonlistpag = '';
			}
			//added by hoor
			if (document.getElementById('parent_grid_id_input')) {
				var  vparent_grid_id_input = document.getElementById('parent_grid_id_input').value;  
			}else {
				var vparent_grid_id_input = '';
			}
			
			//alert("vdivid: "+vdivid);	
			var datastring	= "vdivid="+vdivid+"&vmodule_name="+vmodule_name+"&vfieldid"+vfieldid+"&vitemtype="+vitemtype+"&vfield_label="+vfield_label+"&vfield_name="+vfield_name+"&vfield_type="+vfield_type+"&visrequired="+visrequired+
								"&vdisplay_seq="+vdisplay_seq+"&vdefault_value="+vdefault_value+"&vrange_min="+vrange_min+"&vrange_max="+vrange_max+"&vitem_values="+vitem_values+"&vlist_type="+vlist_type+
								"&vstaticlist="+vstaticlist+"&vcodelist="+vcodelist+"&vnewcodelist="+vnewcodelist+"&vlistmodulename="+vlistmodulename+"&vlistmoduleitem="+vlistmoduleitem+"&vonlistpag="+vonlistpag+"&vparent_grid_id_input="+vparent_grid_id_input;
								
								
			
			//alert("function updateItem is called, datastring: "+datastring);
			
			$.ajax({
				url: "ajax_updateitem.php",
				type : "POST",
				cache : false,
				data : datastring,
				success: function(response)  {
					//alert(response);
				$("#"+vdivid).html(response); 
				//console.log(document.getElementById('contentdiv').innerHTML);
				}
			})
			
			$.fancybox.close();
			

		}	
		
		function show_code(){
			var srcode = document.getElementById('sortablelist').innerHTML;
			while(srcode.includes("<")){
				srcode = srcode.replace("<", "&lt;");
			}
			while(srcode.includes(">")){
				srcode = srcode.replace(">", "&gt;");
			}
			while(srcode.includes("'")){
				srcode = srcode.replace("'", "&apos;");
			}
			while(srcode.includes('"')){
				srcode = srcode.replace('"', "&quot;");
			}
			
			//console.log(srcode);
			
			document.getElementById('source_code').innerHTML = srcode;
			
			$.fancybox.open({
				//$(me).fancybox({
				'autoScale': true,
					'transitionIn': 'elastic',
					'transitionOut': 'elastic',
					'speedIn': 500,
					'speedOut': 300,
					'autoDimensions': true,
					'centerOnScroll': true,
					//'href' : refdiv
					'href': '#source_code'
			});
			
		}

		function save_module(){
			alert('save_module is called');
			//location.reload();
			var vmodule_id = document.getElementById('moduleid').value;
			var vmodule_name = document.getElementById('module_name').value;
			var vmodule_type = document.getElementById('module_type').value;
			var vmodule_descr = document.getElementById('module_descr').value;
			var vusrid = document.getElementById('userid').value;

			var vdznr_code = document.getElementById('sortablelist').innerHTML;
			console.log(vdznr_code);
			while(vdznr_code.includes("<")){
				vdznr_code = vdznr_code.replace("<", "&lt;");
			}
			while(vdznr_code.includes(">")){
				vdznr_code = vdznr_code.replace(">", "&gt;");
			}
			while(vdznr_code.includes("'")){
				vdznr_code = vdznr_code.replace("'", "&apos;");
			}
			while(vdznr_code.includes('"')){
				vdznr_code = vdznr_code.replace('"', "&quot;");
			}

			//console.log(vdznr_code);
			
			var vshow_menu ; var vfrontend_module;
			if(document.getElementById('show_menu').checked == true){
				 vshow_menu ='Y';
			}
			if(document.getElementById('frontend_module').checked == true){
				vfrontend_module ='Y';
			}

			var datastring	= { module_id: vmodule_id, 
								module_name: vmodule_name, 
								module_type: vmodule_type, 
								module_descr: vmodule_descr, 
								show_menu: vshow_menu, 
								frontend_module: vfrontend_module, 
								usrid: vusrid, 
								dznr_code: vdznr_code
							}
			
			//alert("function updateItem is called, datastring: "+datastring);
			
			$.ajax({
				url: "ajax_savemodule.php",
				type : "POST",
				cache : false,
				data : datastring,
				success: function(response)  {
					//console.log(response);
					//location.reload();
				}
			})
			
		}
	  
	</script>
	
	<script src="./mozila_dragndrop_script.js"></script>
	
	
  </body>
</html>








