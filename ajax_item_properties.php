<?php include_once("config.php");

	$itemtype = $_POST['itemtype'];
	$vdivid = $_POST['divid'];
	

	$sqlitem = "select * from dznr_module_fields where divid='".$vdivid."'";
	//echo $sqlitem;
	$resitem = mysqli_query($dbcon, $sqlitem);
	$rowitem = mysqli_fetch_assoc($resitem);
	
?>	


<script>


function getXMLHTTP() { //fuction to return the xml http object
		var xmlhttp=false;	
		try{
			xmlhttp=new XMLHttpRequest();
		}
		catch(e)	{		
			try{			
				xmlhttp= new ActiveXObject("Microsoft.XMLHTTP");
			}
			catch(e){
				try{
				xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
				}
				catch(e1){
					xmlhttp=false;
				}
			}
		}
		 	
		return xmlhttp;
	}


function showlistmoduleitems(vlistmodulename){
	
		var req = getXMLHTTP();		
		if (req) {			
			
			//var vlistmodulename = document.getElementById('listmodulename').value;
			var dataString = 'scrn='+vlistmodulename;
			//alert("data string: "+dataString);
			req.onreadystatechange = function() {
				if (req.readyState == 4) {
					// only if "OK"
					if (req.status == 200) {						
						document.getElementById('divlistmoduleitems').innerHTML=req.responseText;						
					} else {
						alert("There was a problem while using XMLHTTP:\n" + req.statusText);
					}
				}				
			}			
			req.open("GET","ajax_listmoduleitems.php?"+dataString, true);
			req.send(null);
		}
		//getShape(strURL);	
		//getMaxcarat(strURL);
	}

	
</script>	

	

	<?php  	if($itemtype=='radio_button'){  ?>
	
			<div class="widget-body">
					
						<!-- Row -->
						<div class="row">
						
							<!-- Column -->
							<div class="col-12">

									<label class="strong">Field Label</label>
									<input type="text" name="field_label"  id="field_label"  class="form-control" value="<?php echo $rowitem['field_label']; ?>" />
									<?php echo '<p style="color:red;font-size:12px;">'.$error['field_label'].'</p>'; ?>
									
									<label class="strong">Input values separated by comma</label>
									<textarea name="item_values" id="item_values" class="form-control" ><?php echo $rowitem['item_values']; ?></textarea>
									<?php echo '<p style="color:red;font-size:12px;">'.$error['default_value'].'</p>'; ?>
									
									
									<div style="display:none;">
										<label class="strong">Field Type</label>
										<input type="hidden"  name="field_type"  id="field_type" value="<?php echo $itemtype; ?>" />
										
										
										<label class="strong">Display Position</label>
										<input type="hidden"  name="display_pos"  id="display_pos" value="<?php echo $rowitem['display_pos']; ?>" />
										
										<input type="hidden"  name="divid"  id="divid" value="<?php echo $vdivid; ?>" />
										<input type="hidden"  name="itemtype"  id="itemtype" value="<?php echo $itemtype; ?>" />
										<input type="hidden"  name="fieldid"  id="fieldid" value="<?php echo $rowitem['fieldid']; ?>" />
										
									</div>
									
									
									
									<label class="strong">Is Required</label>
									<select  name="isrequired"  id="isrequired" class="form-control" >
										<option value="N"  <?php if($rowitem['isrequired'] == 'N'){ echo ' selected '; } ?> >No</option>
										<option value="Y" <?php if($rowitem['isrequired'] == 'Y'){ echo ' selected '; } ?> >Yes</option>
									</select>
									<?php echo '<p style="color:red;font-size:12px;">'.$error['isrequired'].'</p>'; ?>
									
									
									<label class="strong">Display on Listing page</label>
									<select  name="onlistpag"  id="onlistpag" class="form-control" >
										<option value="">--Select--</option>
										<option value="Y" <?php if($rowitem['onlistpag'] == 'Y'){ echo ' selected '; } ?> >Yes</option>
										<option value="N" <?php if($rowitem['onlistpag'] == 'N'){ echo ' selected '; } ?> >No</option>
									</select>
									<?php echo '<p style="color:red;font-size:12px;">'.$error['isrequired'].'</p>'; ?>
									
									
									<a style="cursor:pointer;" class="btn btn-primary"  onClick="updateItem()" ><i></i>Done</a>
									
								
							</div>
							<!-- // Column END -->
					</div>
		
			</div>
		


	<?php } else if($itemtype=='date_input'){ ?>
	
	
			<div class="widget-body">
					
						<!-- Row -->
						<div class="row">
						
							<!-- Column -->
							<div class="col-12">

									<label class="strong">Field Label</label>
									<input type="text" name="field_label"  id="field_label"  class="form-control" value="<?php echo $rowitem['field_label']; ?>" />
									<?php echo '<p style="color:red;font-size:12px;">'.$error['field_label'].'</p>'; ?>
									
									<div style="display:none;">
										<label class="strong">Field Type</label>
										<input type="hidden"  name="field_type"  id="field_type" value="<?php echo $itemtype; ?>" />
										
										
										<label class="strong">Display Position</label>
										<input type="hidden"  name="display_pos"  id="display_pos" value="<?php echo $rowitem['display_pos']; ?>" />
										
										<input type="hidden"  name="divid"  id="divid" value="<?php echo $vdivid; ?>" />
										<input type="hidden"  name="itemtype"  id="itemtype" value="<?php echo $itemtype; ?>" />
										<input type="hidden"  name="fieldid"  id="fieldid" value="<?php echo $rowitem['fieldid']; ?>" />
										
									</div>
									
									
									<label class="strong">Is Required</label>
									<select  name="isrequired"  id="isrequired" class="form-control" >
										<option value="N"  <?php if($rowitem['isrequired'] == 'N'){ echo ' selected '; } ?> >No</option>
										<option value="Y" <?php if($rowitem['isrequired'] == 'Y'){ echo ' selected '; } ?> >Yes</option>
									</select>
									<?php echo '<p style="color:red;font-size:12px;">'.$error['isrequired'].'</p>'; ?>
									
									
									<label class="strong">Display on Listing page</label>
									<select  name="onlistpag"  id="onlistpag" class="form-control" >
										<option value="">--Select--</option>
										<option value="Y" <?php if($rowitem['onlistpag'] == 'Y'){ echo ' selected '; } ?> >Yes</option>
										<option value="N" <?php if($rowitem['onlistpag'] == 'N'){ echo ' selected '; } ?> >No</option>
									</select>
									<?php echo '<p style="color:red;font-size:12px;">'.$error['isrequired'].'</p>'; ?>
									
									
									<a style="cursor:pointer;" class="btn btn-primary"  onClick="updateItem()" ><i></i>Done</a>

							</div>
							<!-- // Column END -->
					</div>
		
			</div>
	<?php } else if($itemtype=='display_input'){ ?>
	
			<div class="widget-body">
					
						<!-- Row -->
						<div class="row">
						
							<!-- Column -->
							<div class="col-12">

									<label class="strong">Field Label</label>
									<input type="text" name="field_label"  id="field_label"  class="form-control" value="<?php echo $rowitem['field_label']; ?>" />
									<?php echo '<p style="color:red;font-size:12px;">'.$error['field_label'].'</p>'; ?>
									
									<div style="display:none;">
										<label class="strong">Field Type</label>
										<input type="hidden"  name="field_type"  id="field_type" value="<?php echo $itemtype; ?>" />
										
										<label class="strong">Display Position</label>
										<input type="hidden"  name="display_pos"  id="display_pos" value="<?php echo $rowitem['display_pos']; ?>" />
										
										<input type="hidden"  name="divid"  id="divid" value="<?php echo $vdivid; ?>" />
										<input type="hidden"  name="itemtype"  id="itemtype" value="<?php echo $itemtype; ?>" />
										<input type="hidden"  name="fieldid"  id="fieldid" value="<?php echo $rowitem['fieldid']; ?>" />
										
									</div>
									
									
									<a style="cursor:pointer;" class="btn btn-primary"  onClick="updateItem()" ><i></i>Done</a>
									
								
							</div>
							<!-- // Column END -->
					</div>
		
			</div>
	<?php } else if($itemtype=='nondb_input'){ ?>
	
			<div class="widget-body">
					
						<!-- Row -->
						<div class="row">
						
							<!-- Column -->
							<div class="col-12">

									<label class="strong">Field Label</label>
									<input type="text" name="field_label"  id="field_label"  class="form-control" value="<?php echo $rowitem['field_label']; ?>" />
									<?php echo '<p style="color:red;font-size:12px;">'.$error['field_label'].'</p>'; ?>
									
									<div style="display:none;">
										<label class="strong">Field Type</label>
										<input type="hidden"  name="field_type"  id="field_type" value="<?php echo $itemtype; ?>" />
										
										<label class="strong">Display Position</label>
										<input type="hidden"  name="display_pos"  id="display_pos" value="<?php echo $rowitem['display_pos']; ?>" />
										
										<input type="hidden"  name="divid"  id="divid" value="<?php echo $vdivid; ?>" />
										<input type="hidden"  name="itemtype"  id="itemtype" value="<?php echo $itemtype; ?>" />
										<input type="hidden"  name="fieldid"  id="fieldid" value="<?php echo $rowitem['fieldid']; ?>" />
										
									</div>
									
									
									<a style="cursor:pointer;" class="btn btn-primary"  onClick="updateItem()" ><i></i>Done</a>
									
								
							</div>
							<!-- // Column END -->
					</div>
		
			</div>
	<?php } else if($itemtype=='column_heading'){ ?>
	
			<div class="widget-body">
					
						<!-- Row -->
						<div class="row">
						
							<!-- Column -->
							<div class="col-12">

									<label class="strong">Heading</label>
									<input type="text" name="field_label"  id="field_label"  class="form-control" value="<?php echo $rowitem['field_label']; ?>" />
									<?php echo '<p style="color:red;font-size:12px;">'.$error['field_label'].'</p>'; ?>
									
									<div style="display:none;">
										<label class="strong">Field Type</label>
										<input type="hidden"  name="field_type"  id="field_type" value="<?php echo $itemtype; ?>" />
										
										<label class="strong">Display Position</label>
										<input type="hidden"  name="display_pos"  id="display_pos" value="<?php echo $rowitem['display_pos']; ?>" />
										
										<input type="hidden"  name="divid"  id="divid" value="<?php echo $vdivid; ?>" />
										<input type="hidden"  name="itemtype"  id="itemtype" value="<?php echo $itemtype; ?>" />
										<input type="hidden"  name="fieldid"  id="fieldid" value="<?php echo $rowitem['fieldid']; ?>" />
										
									</div>
									
									
									<a style="cursor:pointer;" class="btn btn-primary"  onClick="updateItem()" ><i></i>Done</a>
									
								
							</div>
							<!-- // Column END -->
					</div>
		
			</div>
	
	<?php } else if($itemtype=='text_area'){ ?>
	
			<div class="widget-body">
					
						<!-- Row -->
						<div class="row">
						
							<!-- Column -->
							<div class="col-12">

									<label class="strong">Field Label</label>
									<input type="text" name="field_label"  id="field_label"  class="form-control" value="<?php echo $rowitem['field_label']; ?>" />
									<?php echo '<p style="color:red;font-size:12px;">'.$error['field_label'].'</p>'; ?>
									
									<div style="display:none;">
										<label class="strong">Field Type</label>
										<input type="hidden"  name="field_type"  id="field_type" value="<?php echo $itemtype; ?>" />
										
										<label class="strong">Display Position</label>
										<input type="hidden"  name="display_pos"  id="display_pos" value="<?php echo $rowitem['display_pos']; ?>" />
										
										<input type="hidden"  name="divid"  id="divid" value="<?php echo $vdivid; ?>" />
										<input type="hidden"  name="itemtype"  id="itemtype" value="<?php echo $itemtype; ?>" />
										<input type="hidden"  name="fieldid"  id="fieldid" value="<?php echo $rowitem['fieldid']; ?>" />
										
									</div>
									
									
									<a style="cursor:pointer;" class="btn btn-primary"  onClick="updateItem()" ><i></i>Done</a>
									
								
							</div>
							<!-- // Column END -->
					</div>
		
			</div>
	
	<?php } else if($itemtype=='email_input'){ ?>
	
	
			<div class="widget-body">
					
						<!-- Row -->
						<div class="row">
						
							<!-- Column -->
							<div class="col-12">

									<label class="strong">Field Label</label>
									<input type="text" name="field_label"  id="field_label"  class="form-control" value="<?php echo $rowitem['field_label']; ?>" />
									<?php echo '<p style="color:red;font-size:12px;">'.$error['field_label'].'</p>'; ?>
									
									<div style="display:none;">
										<label class="strong">Field Type</label>
										<input type="hidden"  name="field_type"  id="field_type" value="<?php echo $itemtype; ?>" />
										
										
										<label class="strong">Display Position</label>
										<input type="hidden"  name="display_pos"  id="display_pos" value="<?php echo $rowitem['display_pos']; ?>" />
										
										<input type="hidden"  name="divid"  id="divid" value="<?php echo $vdivid; ?>" />
										<input type="hidden"  name="itemtype"  id="itemtype" value="<?php echo $itemtype; ?>" />
										<input type="hidden"  name="fieldid"  id="fieldid" value="<?php echo $rowitem['fieldid']; ?>" />
										
									</div>
									
									
									<a style="cursor:pointer;" class="btn btn-primary"  onClick="updateItem()" ><i></i>Done</a>
									
								
							</div>
							<!-- // Column END -->
					</div>
		
			</div>
	
	<?php } else if($itemtype=='password_input'){ ?>
	
	
			<div class="widget-body">
					
						<!-- Row -->
						<div class="row">
						
							<!-- Column -->
							<div class="col-12">

									<label class="strong">Field Label</label>
									<input type="text" name="field_label"  id="field_label"  class="form-control" value="<?php echo $rowitem['field_label']; ?>" />
									<?php echo '<p style="color:red;font-size:12px;">'.$error['field_label'].'</p>'; ?>
									
									<div style="display:none;">
										<label class="strong">Field Type</label>
										<input type="hidden"  name="field_type"  id="field_type" value="<?php echo $itemtype; ?>" />
										
										
										<label class="strong">Display Position</label>
										<input type="hidden"  name="display_pos"  id="display_pos" value="<?php echo $rowitem['display_pos']; ?>" />
										
										<input type="hidden"  name="divid"  id="divid" value="<?php echo $vdivid; ?>" />
										<input type="hidden"  name="itemtype"  id="itemtype" value="<?php echo $itemtype; ?>" />
										<input type="hidden"  name="fieldid"  id="fieldid" value="<?php echo $rowitem['fieldid']; ?>" />
										
									</div>
									
									
									<a style="cursor:pointer;" class="btn btn-primary"  onClick="updateItem()" ><i></i>Done</a>
									
								
							</div>
							<!-- // Column END -->
					</div>
		
			</div>
	
	<?php } else if($itemtype=='single_file'){ ?>
	
			<div class="widget-body">
					
						<!-- Row -->
						<div class="row">
						
							<!-- Column -->
							<div class="col-12">

									<label class="strong">Field Label</label>
									<input type="text" name="field_label"  id="field_label"  class="form-control" value="<?php echo $rowitem['field_label']; ?>" />
									<?php echo '<p style="color:red;font-size:12px;">'.$error['field_label'].'</p>'; ?>
									
									<div style="display:none;">
										<label class="strong">Field Type</label>
										<input type="hidden"  name="field_type"  id="field_type" value="<?php echo $itemtype; ?>" />
										
										
										<label class="strong">Display Position</label>
										<input type="hidden"  name="display_pos"  id="display_pos" value="<?php echo $rowitem['display_pos']; ?>" />
										
										<input type="hidden"  name="divid"  id="divid" value="<?php echo $vdivid; ?>" />
										<input type="hidden"  name="itemtype"  id="itemtype" value="<?php echo $itemtype; ?>" />
										<input type="hidden"  name="fieldid"  id="fieldid" value="<?php echo $rowitem['fieldid']; ?>" />
										
									</div>
									
									
									<a style="cursor:pointer;" class="btn btn-primary"  onClick="updateItem()" ><i></i>Done</a>
									
								
							</div>
							<!-- // Column END -->
					</div>
		
			</div>
	
	<?php } else if($itemtype=='multiple_files'){ ?>
	
			<div class="widget-body">
					
						<!-- Row -->
						<div class="row">
						
							<!-- Column -->
							<div class="col-12">

									<label class="strong">Field Label</label>
									<input type="text" name="field_label"  id="field_label"  class="form-control" value="<?php echo $rowitem['field_label']; ?>" />
									<?php echo '<p style="color:red;font-size:12px;">'.$error['field_label'].'</p>'; ?>
									
									<div style="display:none;">
										<label class="strong">Field Type</label>
										<input type="hidden"  name="field_type"  id="field_type" value="<?php echo $itemtype; ?>" />
										
										
										<label class="strong">Display Position</label>
										<input type="hidden"  name="display_pos"  id="display_pos" value="<?php echo $rowitem['display_pos']; ?>" />
										
										<input type="hidden"  name="divid"  id="divid" value="<?php echo $vdivid; ?>" />
										<input type="hidden"  name="itemtype"  id="itemtype" value="<?php echo $itemtype; ?>" />
										<input type="hidden"  name="fieldid"  id="fieldid" value="<?php echo $rowitem['fieldid']; ?>" />
										
									</div>
									
									
									<a style="cursor:pointer;" class="btn btn-primary"  onClick="updateItem()" ><i></i>Done</a>
									
								
							</div>
							<!-- // Column END -->
					</div>
		
			</div>
	
	
	<?php } else if($itemtype=='single_image'){ ?>
	
			<div class="widget-body">
					
						<!-- Row -->
						<div class="row">
						
							<!-- Column -->
							<div class="col-12">

									<label class="strong">Field Label</label>
									<input type="text" name="field_label"  id="field_label"  class="form-control" value="<?php echo $rowitem['field_label']; ?>" />
									<?php echo '<p style="color:red;font-size:12px;">'.$error['field_label'].'</p>'; ?>
									
									<div style="display:none;">
										<label class="strong">Field Type</label>
										<input type="hidden"  name="field_type"  id="field_type" value="<?php echo $itemtype; ?>" />
										
										
										<label class="strong">Display Position</label>
										<input type="hidden"  name="display_pos"  id="display_pos" value="<?php echo $rowitem['display_pos']; ?>" />
										
										<input type="hidden"  name="divid"  id="divid" value="<?php echo $vdivid; ?>" />
										<input type="hidden"  name="itemtype"  id="itemtype" value="<?php echo $itemtype; ?>" />
										<input type="hidden"  name="fieldid"  id="fieldid" value="<?php echo $rowitem['fieldid']; ?>" />
										
									</div>
									
									
									<a style="cursor:pointer;" class="btn btn-primary"  onClick="updateItem()" ><i></i>Done</a>
									
								
							</div>
							<!-- // Column END -->
					</div>
		
			</div>
	
	
	<?php } else if($itemtype=='multiple_images' ){ ?>
	
			<div class="widget-body">
					
						<!-- Row -->
						<div class="row">
						
							<!-- Column -->
							<div class="col-12">

									<label class="strong">Field Label</label>
									<input type="text" name="field_label"  id="field_label"  class="form-control" value="<?php echo $rowitem['field_label']; ?>" />
									<?php echo '<p style="color:red;font-size:12px;">'.$error['field_label'].'</p>'; ?>
									
									<div style="display:none;">
										<label class="strong">Field Type</label>
										<input type="hidden"  name="field_type"  id="field_type" value="<?php echo $itemtype; ?>" />
										
										
										<label class="strong">Display Position</label>
										<input type="hidden"  name="display_pos"  id="display_pos" value="<?php echo $rowitem['display_pos']; ?>" />
										
										<input type="hidden"  name="divid"  id="divid" value="<?php echo $vdivid; ?>" />
										<input type="hidden"  name="itemtype"  id="itemtype" value="<?php echo $itemtype; ?>" />
										<input type="hidden"  name="fieldid"  id="fieldid" value="<?php echo $rowitem['fieldid']; ?>" />
										
									</div>
									
									
									<a style="cursor:pointer;" class="btn btn-primary"  onClick="updateItem()" ><i></i>Done</a>
									
								
							</div>
							<!-- // Column END -->
					</div>
		
			</div>
	
	
	
	<?php } else if($itemtype=='check_box'){ ?>
	
			<div class="widget-body">
					
						<!-- Row -->
						<div class="row">
						
							<!-- Column -->
							<div class="col-12">

									<label class="strong">Field Label</label>
									<input type="text" name="field_label"  id="field_label"  class="form-control" value="<?php echo $rowitem['field_label']; ?>" />
									<?php echo '<p style="color:red;font-size:12px;">'.$error['field_label'].'</p>'; ?>
									
									<div style="display:none;">
										<label class="strong">Field Type</label>
										<input type="hidden"  name="field_type"  id="field_type" value="<?php echo $itemtype; ?>" />
										
										
										<label class="strong">Display Position</label>
										<input type="hidden"  name="display_pos"  id="display_pos" value="<?php echo $rowitem['display_pos']; ?>" />
										
										<input type="hidden"  name="divid"  id="divid" value="<?php echo $vdivid; ?>" />
										<input type="hidden"  name="itemtype"  id="itemtype" value="<?php echo $itemtype; ?>" />
										<input type="hidden"  name="fieldid"  id="fieldid" value="<?php echo $rowitem['fieldid']; ?>" />
										
									</div>
									
									
									<a style="cursor:pointer;" class="btn btn-primary"  onClick="updateItem()" ><i></i>Done</a>
									
								
							</div>
							<!-- // Column END -->
					</div>
		
			</div>
			
	<?php } else if($itemtype=='number_input'){ ?>
			
			<div class="widget-body">
					
						<!-- Row -->
						<div class="row">
						
							<!-- Column -->
							<div class="col-12">

									<label class="strong">Field Label</label>
									<input type="text" name="field_label"  id="field_label"  class="form-control" value="<?php echo $rowitem['field_label']; ?>" />
									<?php echo '<p style="color:red;font-size:12px;">'.$error['field_label'].'</p>'; ?>
									
									<div style="display:none;">
										<label class="strong">Field Type</label>
										<input type="hidden"  name="field_type"  id="field_type" value="<?php echo $itemtype; ?>" />
										
										
										<label class="strong">Display Position</label>
										<input type="hidden"  name="display_pos"  id="display_pos" value="<?php echo $rowitem['display_pos']; ?>" />
										
										<input type="hidden"  name="divid"  id="divid" value="<?php echo $vdivid; ?>" />
										<input type="hidden"  name="itemtype"  id="itemtype" value="<?php echo $itemtype; ?>" />
										<input type="hidden"  name="fieldid"  id="fieldid" value="<?php echo $rowitem['fieldid']; ?>" />
										
									</div>
									
									<label class="strong">Minimum Value</label>
									<input type="text"  name="range_min"  id="range_min" value="<?php echo $rowitem['range_min']; ?>" />
										
									<label class="strong">Maximum Value</label>
									<input type="text"  name="range_max"  id="range_max" value="<?php echo $rowitem['range_max']; ?>" />	
									
									
									<label class="strong">Is Required</label>
									<select  name="isrequired"  id="isrequired" class="form-control" >
										<option value="N"  <?php if($rowitem['isrequired'] == 'N'){ echo ' selected '; } ?> >No</option>
										<option value="Y" <?php if($rowitem['isrequired'] == 'Y'){ echo ' selected '; } ?> >Yes</option>
									</select>
									<?php echo '<p style="color:red;font-size:12px;">'.$error['isrequired'].'</p>'; ?>
									
									
									<label class="strong">Display on Listing page</label>
									<select  name="onlistpag"  id="onlistpag" class="form-control" >
										<option value="">--Select--</option>
										<option value="Y" <?php if($rowitem['onlistpag'] == 'Y'){ echo ' selected '; } ?> >Yes</option>
										<option value="N" <?php if($rowitem['onlistpag'] == 'N'){ echo ' selected '; } ?> >No</option>
									</select>
									<?php echo '<p style="color:red;font-size:12px;">'.$error['isrequired'].'</p>'; ?>
									
									
									<a style="cursor:pointer;" class="btn btn-primary"  onClick="updateItem()" ><i></i>Done</a>

							</div>
							<!-- // Column END -->
					</div>
		
			</div>
	<?php } else if($itemtype=='multi_choice'){ ?>
	
				<div class="widget-body">
					
						<!-- Row -->
						<div class="row">
						
							<!-- Column -->
							<div class="col-12">

									<label class="strong">Field Label</label>
									<input type="text" name="field_label"  id="field_label"  class="form-control" value="<?php echo $rowitem['field_label']; ?>" />
									<?php echo '<p style="color:red;font-size:12px;">'.$error['field_label'].'</p>'; ?>
									
									<div style="display:none;">
										<label class="strong">Field Type</label>
										<input type="hidden"  name="field_type"  id="field_type" value="<?php echo $itemtype; ?>" />
										
										
										<label class="strong">Display Position</label>
										<input type="hidden"  name="display_pos"  id="display_pos" value="<?php echo $rowitem['display_pos']; ?>" />
										
										<input type="hidden"  name="divid"  id="divid" value="<?php echo $vdivid; ?>" />
										<input type="hidden"  name="itemtype"  id="itemtype" value="<?php echo $itemtype; ?>" />
										<input type="hidden"  name="fieldid"  id="fieldid" value="<?php echo $rowitem['fieldid']; ?>" />
										
									</div>
									
									<label class="strong">Enter values separated by comma</label>
									<textarea name="item_values" id="item_values" ><?php echo $rowitem['item_values']; ?></textarea>
									<?php echo '<p style="color:red;font-size:12px;">'.$error['default_value'].'</p>'; ?>
									
									
									
									<label class="strong">Is Required</label>
									<select  name="isrequired"  id="isrequired" class="form-control" >
										<option value="N"  <?php if($rowitem['isrequired'] == 'N'){ echo ' selected '; } ?> >No</option>
										<option value="Y" <?php if($rowitem['isrequired'] == 'Y'){ echo ' selected '; } ?> >Yes</option>
									</select>
									<?php echo '<p style="color:red;font-size:12px;">'.$error['isrequired'].'</p>'; ?>
									
									
								
									
									<a style="cursor:pointer;" class="btn btn-primary"  onClick="updateItem()" ><i></i>Done</a>

							</div>
							<!-- // Column END -->
					</div>
		
			</div>
			
	<?php } else if($itemtype=='drop_down'){ ?>
	
				<div class="widget-body">
					
						<!-- Row -->
						<div class="row">
						
							<!-- Column -->
							<div class="col-12">

									<label class="strong">Field Label</label>
									<input type="text" name="field_label"  id="field_label"  class="form-control" value="<?php echo $rowitem['field_label']; ?>" />
									<?php echo '<p style="color:red;font-size:12px;">'.$error['field_label'].'</p>'; ?>
									
									<div style="display:none;">
										<label class="strong">Field Type</label>
										<input type="hidden"  name="field_type"  id="field_type" value="<?php echo $itemtype; ?>" />
										
										
										<label class="strong">Display Position</label>
										<input type="hidden"  name="display_pos"  id="display_pos" value="<?php echo $rowitem['display_pos']; ?>" />
										
										<input type="hidden"  name="divid"  id="divid" value="<?php echo $vdivid; ?>" />
										<input type="hidden"  name="itemtype"  id="itemtype" value="<?php echo $itemtype; ?>" />
										<input type="hidden"  name="fieldid"  id="fieldid" value="<?php echo $rowitem['fieldid']; ?>" />
										
									</div>
									
									<label class="strong">Enter values separated by comma</label>
									<textarea name="item_values" id="item_values" ><?php echo $rowitem['item_values']; ?></textarea>
									<?php echo '<p style="color:red;font-size:12px;">'.$error['default_value'].'</p>'; ?>
									
									
									<label class="strong">Is Required</label>
									<select  name="isrequired"  id="isrequired" class="form-control" >
										<option value="N"  <?php if($rowitem['isrequired'] == 'N'){ echo ' selected '; } ?> >No</option>
										<option value="Y" <?php if($rowitem['isrequired'] == 'Y'){ echo ' selected '; } ?> >Yes</option>
									</select>
									<?php echo '<p style="color:red;font-size:12px;">'.$error['isrequired'].'</p>'; ?>
									
									
								
									
									
									<a style="cursor:pointer;" class="btn btn-primary"  onClick="updateItem()" ><i></i>Done</a>

							</div>
							<!-- // Column END -->
					</div>
		
			</div>
			
	<?php } else if($itemtype=='new_codes_list'){ ?>

				<div class="widget-body">
					
						<!-- Row -->
						<div class="row">
						
							<!-- Column -->
							<div class="col-12">

									<label class="strong">Field Label</label>
									<input type="text" name="field_label"  id="field_label"  class="form-control" value="<?php echo $rowitem['field_label']; ?>" />
									<?php echo '<p style="color:red;font-size:12px;">'.$error['field_label'].'</p>'; ?>
									
									<div style="display:none;">
										<label class="strong">Field Type</label>
										<input type="hidden"  name="field_type"  id="field_type" value="<?php echo $itemtype; ?>" />
										
										
										<label class="strong">Display Position</label>
										<input type="hidden"  name="display_pos"  id="display_pos" value="<?php echo $rowitem['display_pos']; ?>" />
										
										<input type="hidden"  name="divid"  id="divid" value="<?php echo $vdivid; ?>" />
										<input type="hidden"  name="itemtype"  id="itemtype" value="<?php echo $itemtype; ?>" />
										<input type="hidden"  name="fieldid"  id="fieldid" value="<?php echo $rowitem['fieldid']; ?>" />
										
									</div>
									
									<label class="strong">New Codes List Name</label>
									<input type="text" name="newcodelist"  id="newcodelist"  class="form-control" value="<?php echo $rowitem['newcodelist']; ?>" />
									<?php echo '<p style="color:red;font-size:12px;">'.$error['default_value'].'</p>'; ?>
									
									
									
									<label class="strong">Is Required</label>
									<select  name="isrequired"  id="isrequired" class="form-control" >
										<option value="N"  <?php if($rowitem['isrequired'] == 'N'){ echo ' selected '; } ?> >No</option>
										<option value="Y" <?php if($rowitem['isrequired'] == 'Y'){ echo ' selected '; } ?> >Yes</option>
									</select>
									<?php echo '<p style="color:red;font-size:12px;">'.$error['isrequired'].'</p>'; ?>
									
									<a style="cursor:pointer;" class="btn btn-primary"  onClick="updateItem()" ><i></i>Done</a>

							</div>
							<!-- // Column END -->
					</div>
		
			</div>
			

	<?php } else if($itemtype=='codes_list'){ ?>
	

			<div class="widget-body">
					
						<!-- Row -->
						<div class="row">
						
							<!-- Column -->
							

									<label class="strong">Field Label</label>
									<input type="text" name="field_label"  id="field_label"  class="form-control" value="<?php echo $rowitem['field_label']; ?>" />
									<?php echo '<p style="color:red;font-size:12px;">'.$error['field_label'].'</p>'; ?>
									
									<div style="display:none;">
										<label class="strong">Field Type</label>
										<input type="hidden"  name="field_type"  id="field_type" value="<?php echo $itemtype; ?>" />
										
										
										<label class="strong">Display Position</label>
										<input type="hidden"  name="display_pos"  id="display_pos" value="<?php echo $rowitem['display_pos']; ?>" />
										
										<input type="hidden"  name="divid"  id="divid" value="<?php echo $vdivid; ?>" />
										<input type="hidden"  name="itemtype"  id="itemtype" value="<?php echo $itemtype; ?>" />
										<input type="hidden"  name="fieldid"  id="fieldid" value="<?php echo $rowitem['fieldid']; ?>" />
										
									</div>
									
										<label class="strong">Codes List Name</label>
										<?php
											//$clientid = '9';
											$sqlovmastr = "select * from lov_master where clientid = '".$clientid."' or clientid= 'ALL' order by lov_name";
											$reslovmastr = mysqli_query($dbcon, $sqlovmastr);
											
											echo '<select name="codelist" id="codelist"  >';
											
											while($rowlovmastr = mysqli_fetch_assoc($reslovmastr)){
											
											?>	
												<option  <?php if($rowitem['codelist']==$rowlovmastr['lov_name']){ echo 'selected';} ?>  value="<?php echo $rowlovmastr['lov_name']; ?>" > 
																<?php echo $rowlovmastr['lov_name']; ?> 
												</option>
																			
											<?php
											}
											echo '</select>';
										?>
									
									
									<label class="strong">Is Required</label>
									<select  name="isrequired"  id="isrequired" class="form-control" >
										<option value="N"  <?php if($rowitem['isrequired'] == 'N'){ echo ' selected '; } ?> >No</option>
										<option value="Y" <?php if($rowitem['isrequired'] == 'Y'){ echo ' selected '; } ?> >Yes</option>
									</select>
									<?php echo '<p style="color:red;font-size:12px;">'.$error['isrequired'].'</p>'; ?>
									
									
									<label class="strong">Display on Listing page</label>
									<select  name="onlistpag"  id="onlistpag" class="form-control" >
										<option value="">--Select--</option>
										<option value="Y" <?php if($rowitem['onlistpag'] == 'Y'){ echo ' selected '; } ?> >Yes</option>
										<option value="N" <?php if($rowitem['onlistpag'] == 'N'){ echo ' selected '; } ?> >No</option>
									</select>
									<?php echo '<p style="color:red;font-size:12px;">'.$error['isrequired'].'</p>'; ?>
									
									
									
									
									<a style="cursor:pointer;" class="btn btn-primary"  onClick="updateItem()" ><i></i>Done</a>

							
							<!-- // Column END -->
					</div>
		
			</div>
	
	<?php } else if($itemtype=='referenced_data'){ ?>
	
	
			<div class="widget-body">
					
						<!-- Row -->
						<div class="row">
						
							<!-- Column -->
							<div class="col-12">

									<label class="strong">Field Label</label>
									<input type="text" name="field_label"  id="field_label"  class="form-control" value="<?php echo $rowitem['field_label']; ?>" />
									<?php echo '<p style="color:red;font-size:12px;">'.$error['field_label'].'</p>'; ?>
									
									<div style="display:none;">
										<label class="strong">Field Type</label>
										<input type="hidden"  name="field_type"  id="field_type" value="<?php echo $itemtype; ?>" />
										
										
										<label class="strong">Display Position</label>
										<input type="hidden"  name="display_pos"  id="display_pos" value="<?php echo $rowitem['display_pos']; ?>" />
										
										<input type="hidden"  name="divid"  id="divid" value="<?php echo $vdivid; ?>" />
										<input type="hidden"  name="itemtype"  id="itemtype" value="<?php echo $itemtype; ?>" />
										<input type="hidden"  name="fieldid"  id="fieldid" value="<?php echo $rowitem['fieldid']; ?>" />
										
									</div>
									
									
									
									<label class="strong">Existing Module Name</label>
									<input type="hidden" name="hlistmodulename"  id="hlistmodulename"   value="<?php echo $listmodulename; ?>"  />
									<?php 
									$sqlscrn = "select table_name ,table_descr
													from rptusrtables
													where active='Y' 
													and (clientid = '".$clientid."' or clientid = 'ALL')";
												
									$rescrn = mysqli_query($dbcon, $sqlscrn);
									?>
									<select  name="listmodulename"  id="listmodulename" class="form-control" onchange="showlistmoduleitems(this.value)" >
										<option value="">--Select--</option>
										<?php while($rowscrn = mysqli_fetch_assoc($rescrn)){ ?>
											<option value="<?php echo $rowscrn['table_name']; ?>" <?php if($listmodulename == $rowscrn['table_name']){ ?> SELECTED <?php } ?> ><?php echo $rowscrn['table_descr']; ?></option>
										<?php } ?>
									</select>
									
									
									<div id="divlistmoduleitems">
									<label class="strong">Existing Module Item</label>
										<?php
										//if($listmodulename != ''){
										?>
											<input type="hidden" name="hlistmoduleitem"  id="hlistmoduleitem"   value="<?php echo $listmoduleitem; ?>"  />
											<?php 
											$sqlmodlfelds = "select * 
															from rptusrfields
															where active='Y' 
															and table_name = '".$listmodulename."'" ;   
											$resmodlfelds = mysqli_query($dbcon, $sqlmodlfelds);
											?>
											<select  name="listmoduleitem"  id="listmoduleitem" class="form-control" >
												<option value="">--Select--</option>
												<?php while($rowmodlfelds = mysqli_fetch_assoc($resmodlfelds)){ ?>
													<option value="<?php echo $rowmodlfelds['field_name']; ?>" <?php if($listmoduleitem == $rowmodlfelds['field_name']){ ?> SELECTED <?php } ?> ><?php echo $rowmodlfelds['field_descr']; ?></option>
												<?php } ?>
											</select>
										<?php // } ?>
									</div>
									
									
									<label class="strong">Is Required</label>
									<select  name="isrequired"  id="isrequired" class="form-control" >
										<option value="N"  <?php if($rowitem['isrequired'] == 'N'){ echo ' selected '; } ?> >No</option>
										<option value="Y" <?php if($rowitem['isrequired'] == 'Y'){ echo ' selected '; } ?> >Yes</option>
									</select>
									<?php echo '<p style="color:red;font-size:12px;">'.$error['isrequired'].'</p>'; ?>
									
									
									<label class="strong">Display on Listing page</label>
									<select  name="onlistpag"  id="onlistpag" class="form-control" >
										<option value="">--Select--</option>
										<option value="Y" <?php if($rowitem['onlistpag'] == 'Y'){ echo ' selected '; } ?> >Yes</option>
										<option value="N" <?php if($rowitem['onlistpag'] == 'N'){ echo ' selected '; } ?> >No</option>
									</select>
									<?php echo '<p style="color:red;font-size:12px;">'.$error['isrequired'].'</p>'; ?>
									
									
									<a style="cursor:pointer;" class="btn btn-primary"  onClick="updateItem()" ><i></i>Done</a>

							</div>
							<!-- // Column END -->
					</div>
		
			</div>
	
	
	<?php } else if($itemtype=='text_input'){ ?>
	
			<div class="widget-body">
					
						<!-- Row -->
						<div class="row">
						
							<!-- Column -->
							
							<div class="col-12">
									<label class="strong">Field Label</label>
									<input type="text" name="field_label"  id="field_label"  class="form-control" value="<?php echo $rowitem['field_label']; ?>" />
									<?php echo '<p style="color:red;font-size:12px;">'.$error['field_label'].'</p>'; ?>
									
									<div style="display:none;">
										<label class="strong">Field Type</label>
										<input type="hidden"  name="field_type"  id="field_type" value="<?php echo $itemtype; ?>" />
										
										
										<label class="strong">Display Position</label>
										<input type="hidden"  name="display_pos"  id="display_pos" value="<?php echo $rowitem['display_pos']; ?>" />
										
										<input type="hidden"  name="divid"  id="divid" value="<?php echo $vdivid; ?>" />
										<input type="hidden"  name="itemtype"  id="itemtype" value="<?php echo $itemtype; ?>" />
										<input type="hidden"  name="fieldid"  id="fieldid" value="<?php echo $rowitem['fieldid']; ?>" />
										
									</div>
									
									
									
									<label class="strong">Is Required</label>
									<select  name="isrequired"  id="isrequired" class="form-control" >
										<option value="N"  <?php if($rowitem['isrequired'] == 'N'){ echo ' selected '; } ?> >No</option>
										<option value="Y" <?php if($rowitem['isrequired'] == 'Y'){ echo ' selected '; } ?> >Yes</option>
									</select>
									<?php echo '<p style="color:red;font-size:12px;">'.$error['isrequired'].'</p>'; ?>
									
									
									<label class="strong">Display on Listing page</label>
									<select  name="onlistpag"  id="onlistpag" class="form-control" >
										<option value="">--Select--</option>
										<option value="Y" <?php if($rowitem['onlistpag'] == 'Y'){ echo ' selected '; } ?> >Yes</option>
										<option value="N" <?php if($rowitem['onlistpag'] == 'N'){ echo ' selected '; } ?> >No</option>
									</select>
									<?php echo '<p style="color:red;font-size:12px;">'.$error['isrequired'].'</p>'; ?>
									
									
									
									<label class="strong">Default value</label>
									<input type="text" name="default_value"  id="default_value"  class="form-control"  value="<?php echo $rowitem['default_value']; ?>" />
									<?php echo '<p style="color:red;font-size:12px;">'.$error['default_value'].'</p>'; ?>
									
									
									
									<a style="cursor:pointer;" class="btn btn-primary updateit"  onClick="updateItem()" ><i></i>Done</a>

							</div>
							<!-- // Column END -->
					</div>
		
			</div>
	<?php } else if($itemtype=='rich_text_editor'){ ?>
	
			<div class="widget-body">
					
						<!-- Row -->
						<div class="row">
						
							<!-- Column -->
							

									<label class="strong">Field Label</label>
									<input type="text" name="field_label"  id="field_label"  class="form-control" value="<?php echo $rowitem['field_label']; ?>" />
									<?php echo '<p style="color:red;font-size:12px;">'.$error['field_label'].'</p>'; ?>
									
									<div style="display:none;">
										<label class="strong">Field Type</label>
										<input type="hidden"  name="field_type"  id="field_type" value="<?php echo $itemtype; ?>" />
										
										
										<label class="strong">Display Position</label>
										<input type="hidden"  name="display_pos"  id="display_pos" value="<?php echo $rowitem['display_pos']; ?>" />
										
										<input type="hidden"  name="divid"  id="divid" value="<?php echo $vdivid; ?>" />
										<input type="hidden"  name="itemtype"  id="itemtype" value="<?php echo $itemtype; ?>" />
										<input type="hidden"  name="fieldid"  id="fieldid" value="<?php echo $rowitem['fieldid']; ?>" />
										
										
									</div>
									
									
									
									<!--label class="strong">Is Required</label>
									<select  name="isrequired"  id="isrequired" class="form-control" >
										<option value="N"  < ?php if($rowitem['isrequired'] == 'N'){ echo ' selected '; } ?> >No</option>
										<option value="Y" < ?php if($rowitem['isrequired'] == 'Y'){ echo ' selected '; } ?> >Yes</option>
									</select>
									< ?php echo '<p style="color:red;font-size:12px;">'.$error['isrequired'].'</p>'; ?>
									-->
									
									<a style="cursor:pointer;" class="btn btn-primary updateit"  onClick="updateItem()" ><i></i>Done</a>

							
							<!-- // Column END -->
					</div>
		
			</div>
	
	
	<?php } else if($itemtype=='url_input'){ ?>
	
			<div class="widget-body">
					
						<!-- Row -->
						<div class="row">
						
							<!-- Column -->
							

									<label class="strong">Field Label</label>
									<input type="text" name="field_label"  id="field_label"  class="form-control" value="<?php echo $rowitem['field_label']; ?>" />
									<?php echo '<p style="color:red;font-size:12px;">'.$error['field_label'].'</p>'; ?>
									
									<div style="display:none;">
										<label class="strong">Field Type</label>
										<input type="hidden"  name="field_type"  id="field_type" value="<?php echo $itemtype; ?>" />
										
										
										<label class="strong">Display Position</label>
										<input type="hidden"  name="display_pos"  id="display_pos" value="<?php echo $rowitem['display_pos']; ?>" />
										
										<input type="hidden"  name="divid"  id="divid" value="<?php echo $vdivid; ?>" />
										<input type="hidden"  name="itemtype"  id="itemtype" value="<?php echo $itemtype; ?>" />
										<input type="hidden"  name="fieldid"  id="fieldid" value="<?php echo $rowitem['fieldid']; ?>" />
										
									</div>
									
									
									
									<label class="strong">Is Required</label>
									<select  name="isrequired"  id="isrequired" class="form-control" >
										<option value="N"  <?php if($rowitem['isrequired'] == 'N'){ echo ' selected '; } ?> >No</option>
										<option value="Y" <?php if($rowitem['isrequired'] == 'Y'){ echo ' selected '; } ?> >Yes</option>
									</select>
									<?php echo '<p style="color:red;font-size:12px;">'.$error['isrequired'].'</p>'; ?>
									
									
									<label class="strong">Display on Listing page</label>
									<select  name="onlistpag"  id="onlistpag" class="form-control" >
										<option value="">--Select--</option>
										<option value="Y" <?php if($rowitem['onlistpag'] == 'Y'){ echo ' selected '; } ?> >Yes</option>
										<option value="N" <?php if($rowitem['onlistpag'] == 'N'){ echo ' selected '; } ?> >No</option>
									</select>
									<?php echo '<p style="color:red;font-size:12px;">'.$error['isrequired'].'</p>'; ?>
									
									
									
									<label class="strong">Default value</label>
									<input type="text" name="default_value"  id="default_value"  class="form-control"  value="<?php echo $rowitem['default_value']; ?>" />
									<?php echo '<p style="color:red;font-size:12px;">'.$error['default_value'].'</p>'; ?>
									
									
									
									<a style="cursor:pointer;" class="btn btn-primary updateit"  onClick="updateItem()" ><i></i>Done</a>

							
							<!-- // Column END -->
					</div>
		
			</div>
	
	
	<?php } else if($itemtype=='submodule'){ ?>
	
			<div class="widget-body">
					
						<!-- Row -->
						<div class="row">
						
							<!-- Column -->
							

									<label class="strong">Sub-Module Heading</label>
									<input type="text" name="field_label"  id="field_label"  class="form-control" value="<?php echo $rowitem['field_label']; ?>" />
									<?php echo '<p style="color:red;font-size:12px;">'.$error['field_label'].'</p>'; ?>
									
									<div style="display:none;">
										<label class="strong">Field Type</label>
										<input type="hidden"  name="field_type"  id="field_type" value="<?php echo $itemtype; ?>" />
										
										
										<label class="strong">Display Position</label>
										<input type="hidden"  name="display_pos"  id="display_pos" value="<?php echo $rowitem['display_pos']; ?>" />
										
										<input type="hidden"  name="divid"  id="divid" value="<?php echo $vdivid; ?>" />
										<input type="hidden"  name="itemtype"  id="itemtype" value="<?php echo $itemtype; ?>" />
										<input type="hidden"  name="fieldid"  id="fieldid" value="<?php echo $rowitem['fieldid']; ?>" />
										
									
									
									
										
										<label class="strong">Is Required</label>
										<select  name="isrequired"  id="isrequired" class="form-control" >
											<option value="N"  <?php if($rowitem['isrequired'] == 'N'){ echo ' selected '; } ?> >No</option>
											<option value="Y" <?php if($rowitem['isrequired'] == 'Y'){ echo ' selected '; } ?> >Yes</option>
										</select>
										<?php echo '<p style="color:red;font-size:12px;">'.$error['isrequired'].'</p>'; ?>
										
										
										<label class="strong">Display on Listing page</label>
										<select  name="onlistpag"  id="onlistpag" class="form-control" >
											<option value="N"  selected >No</option>
										</select>
										<?php echo '<p style="color:red;font-size:12px;">'.$error['isrequired'].'</p>'; ?>
										
									</div>
									
									<label class="strong">Based On Existing Module</label>
									
										<select  name="default_value"  id="default_value" class="form-control" >
											<option value="">--Select--</option>
										<?php
											$sqlmodls = "select * from dznr_modules where  menutype='submodule' and clientid='4' ";    //".$clientid."
											$resmodls = mysqli_query($dbcon, $sqlmodls);
											while($rowmodls = mysqli_fetch_assoc($resmodls)){
										?>
											<option value="<?php echo $rowmodls['id']; ?>" <?php if($rowitem['default_value'] == $rowmodls['id']){ echo ' selected '; } ?> ><?php echo $rowmodls['module_name']; ?></option>
										<?php
										}
										?>
										</select>
									
									<?php echo '<p style="color:red;font-size:12px;">'.$error['default_value'].'</p>'; ?>
									
									
									
									<a style="cursor:pointer;" class="btn btn-primary updateit"  onClick="updateItem()" ><i></i>Done</a>

							
							<!-- // Column END -->
					</div>
		
			</div>
	
	
	<?php } else { echo "Nothing to display 1"; }?>