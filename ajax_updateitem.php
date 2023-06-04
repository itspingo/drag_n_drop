<?php include_once("config.php");

error_reporting(E_ALL && ~E_WARNING && ~E_NOTICE);
	$vdivid = $_POST["vdivid"];    
	$vmodule_name = $_POST["vmodule_name"];    
	//$vfieldid = $_POST["vfieldid"];    
	$vitemtype = $_POST["vitemtype"];    
	$vdisplay_pos = $_POST["vdisplay_pos"];    
	$vfield_label = $_POST["vfield_label"];   
	$vfield_name =  strtolower(str_replace(' ','_', $vfield_label ));  //$_POST["vfield_name"];    
	$vfield_type = $_POST["vfield_type"];    
	$visrequired = $_POST["visrequired"];
	$vdisplay_seq = $_POST["vdisplay_seq"];    
	if($vdisplay_seq==''){
		$vdisplay_seq='0';
	}
	$vdefault_value = $_POST["vdefault_value"];  
	
	$vrange_min = $_POST["vrange_min"];    
	if($vrange_min==''){
		$vrange_min=0;
	}
	$vrange_max = $_POST["vrange_max"];    
	if($vrange_max==''){
		$vrange_max=999999999;
	}

	$vitem_values = $_POST["vitem_values"];    
	$vlist_type = $_POST["vlist_type"];   
	$vstaticlist = $_POST["vstaticlist"];    
	$vcodelist = $_POST["vcodelist"];    
	$vnewcodelist = $_POST["vnewcodelist"];    
	$vlistmodulename = $_POST["vlistmodulename"];    
	$vlistmoduleitem = $_POST["vlistmoduleitem"];    
	$vonlistpag = $_POST["vonlistpag"];
		
	$sqlexist = "select count(1) as recs from dznr_module_fields where divid = '".$vdivid."' ";
	$resexist = mysqli_query($dbcon, $sqlexist);
	$rowexist = mysqli_fetch_assoc($resexist);
	
	if($rowexist['recs'] == 0){
		$sqlinsrt = "insert into dznr_module_fields set 
			module_name = '".$vmodule_name."',
			divid = '".$vdivid."',
			field_label = '".$vfield_label."', 
			field_name = '".$vfield_name."', 
			field_type = '".$vfield_type."', 
			isrequired = '".$visrequired."', 
			display_pos = '".$vdisplay_pos."', 
			display_seq = '".$vdisplay_seq."', 
			default_value = '".$vdefault_value."', 
			range_min = '".$vrange_min."', 
			range_max = '".$vrange_max."', 
			item_values = '".$vitem_values."', 
			list_type = '".$vlist_type."', 
			staticlist = '".$vstaticlist."', 
			codelist = '".$vcodelist."', 
			newcodelist = '".$vnewcodelist."', 
			listmodulename = '".$vlistmodulename."', 
			listmoduleitem = '".$vlistmoduleitem."', 
			codes_list_name = '', 
			action = 'add',
			onlistpag = '".$vonlistpag."' ";
		$resinsrt = mysqli_query($dbcon, $sqlinsrt);
			
	}else{
	
		$sqlupdt="update dznr_module_fields set 
			module_name = '".$vmodule_name."',
			
			field_label = '".$vfield_label."', 
			field_name = '".$vfield_name."', 
			field_type = '".$vfield_type."', 
			isrequired = '".$visrequired."', 
			display_pos = '".$vdisplay_pos."', 
			display_seq = '".$vdisplay_seq."', 
			default_value = '".$vdefault_value."', 
			range_min = '".$vrange_min."', 
			range_max = '".$vrange_max."', 
			item_values = '".$vitem_values."', 
			list_type = '".$vlist_type."', 
			staticlist = '".$vstaticlist."', 
			codelist = '".$vcodelist."', 
			newcodelist = '".$vnewcodelist."', 
			listmodulename = '".$vlistmodulename."', 
			listmoduleitem = '".$vlistmoduleitem."', 
			codes_list_name = '', 
			action = 'update',
			onlistpag = '".$vonlistpag."'
		where divid = '".$vdivid."' ";
		mysqli_query($dbcon, $sqlupdt);
	}
	
?>



<?php if($vitemtype=='text_input'){ ?>

			
			<span class="row">
				<span class="col-6 float-left" id="<?php echo 'label_'.$vdivid; ?>" >
					<label><?php echo $vfield_label; ?> </label>
				</span>
				<span id="<?php echo 'controls_'.$vdivid; ?>" class="col-6 float-right item_icons item_icons_show" style="align:right;" align="right" >
					<a style="cursor:pointer;color:blue;"  onClick="showattribs('text_input', <?php echo $vdivid; ?>)" ><i class="bi bi-gear"></i></a>	
					<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $vdivid; ?>)" ><i class="bi bi-trash"></i></a>
				</span>
			</span>
			<span class="row">
				<span class="col-12" id="<?php echo 'input_'.$vdivid; ?>">
					<input type="text" name="<?php echo $vfield_name; ?>"  id="<?php echo $vfield_name; ?>"  class="form-control"  value="<?php echo $vdefault_value; ?>"
						<?php if($visrequired=='Y'){echo ' required '; } ?>  />
					<?php  echo "<div style='color:red;font-size:12px;'>".$error[$vfield_name].'</div>'; ?>
				</span>
			</span>
			
			
 <?php } else if($vitemtype=='display_input'){ ?>

			<span class="row">
				<span class="col-6 float-left" id="<?php echo 'label_'.$vdivid; ?>" >
					<label><?php echo $vfield_label; ?></label>
				</span>
				<span id="<?php echo 'controls_'.$vdivid; ?>" class="col-6 float-right item_icons item_icons_show" style="align:right;" align="right" >
					<a style="cursor:pointer;color:blue;"  onClick="showattribs('display_input', <?php echo $vdivid; ?>)" ><i class="bi bi-gear"></i></a>	
					<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $vdivid; ?>)" ><i class="bi bi-trash"></i></a>
					
				</span>
			</span>
			<span class="row">
				<span class="col-12" id="<?php echo 'input_'.$vdivid; ?>">
					<input type="text" disabled name="<?php echo $vfield_name; ?>"  id="<?php echo $vfield_name; ?>"   class="form-control"  value=""
						<?php if($visrequired=='Y'){echo ' required '; } ?>  />
					<?php echo "<div style='color:red;font-size:12px;'>".$error[$vfield_name].'</div>'; ?>
				</span>
			</span>

<?php } else if($vitemtype=='nondb_input'){ ?>

			<span class="row">
				<span class="col-6 float-left" id="<?php echo 'label_'.$vdivid; ?>" >
					<label><?php echo $vfield_label; ?></label>
				</span>
				<span id="<?php echo 'controls_'.$vdivid; ?>" class="col-6 float-right item_icons item_icons_show" style="align:right;" align="right" >
					<a style="cursor:pointer;color:blue;"  onClick="showattribs('nondb_input', <?php echo $vdivid; ?>)" ><i class="bi bi-gear"></i></a>	
					<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $vdivid; ?>)" ><i class="bi bi-trash"></i></a>
					
				</span>
			</span>
			<span class="row">
				<span class="col-12" id="<?php echo 'input_'.$vdivid; ?>">
					<input type="text" name="<?php echo $vfield_name; ?>"  id="<?php echo $vfield_name; ?>"   class="form-control"  value=""
						<?php if($visrequired=='Y'){echo ' required '; } ?>  />
					<?php echo "<div style='color:red;font-size:12px;'>".$error[$vfield_name].'</div>'; ?>
				</span>
			</span>

<?php } else if($vitemtype=='column_heading'){ ?>

			
			<span class="row">
				<span id="<?php echo 'controls_'.$vdivid; ?>" class="col-12 float-right item_icons item_icons_show" style="align:right;" align="right" >
					<a style="cursor:pointer;color:blue;"  onClick="showattribs('column_heading', <?php echo $vdivid; ?>)" ><i class="bi bi-gear"></i></a>	
					<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $vdivid; ?>)" ><i class="bi bi-trash"></i></a>
				</span>
			</span>
			<span class="row">
				<span class="col-12" id="<?php echo 'input_'.$vdivid; ?>">
					<span align="left" class="font-size:34px;"><b><?php echo $vfield_label; ?></b></span> 
					<?php // echo "<div style='color:red;font-size:12px;'>".$error[$vfield_name].'</div>'; ?>
				</span>
			</span>
			
			
<?php } else if($vitemtype=='url_input'){ ?>

			<span class="row">
				<span class="col-6 float-left" id="<?php echo 'label_'.$vdivid; ?>" >
					<label><?php echo $vfield_label; ?></label>
				</span>
				<span id="<?php echo 'controls_'.$vdivid; ?>" class="col-6 float-right item_icons item_icons_show" style="align:right;" align="right" >
					<a style="cursor:pointer;color:blue;"  onClick="showattribs('url_input', <?php echo $vdivid; ?>)" ><i class="bi bi-gear"></i></a>	
					<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $vdivid; ?>)" ><i class="bi bi-trash"></i></a>
					
				</span>
			</span>
			<span class="row">
				<span class="col-12" id="<?php echo 'input_'.$vdivid; ?>">
					<input type="url" name="<?php echo $vfield_name; ?>"  id="<?php echo $vfield_name; ?>"   class="form-control"  value=""
						<?php if($visrequired=='Y'){echo ' required '; } ?>  />
					<?php echo "<div style='color:red;font-size:12px;'>".$error[$vfield_name].'</div>'; ?>
				</span>
			</span>
				
				
<?php } else if($vitemtype=='date_input'){ ?>

			<span class="row">
				<span class="col-6 float-left" id="<?php echo 'label_'.$vdivid; ?>" >
					<label><?php echo $vfield_label; ?></label>
				</span>
				<span id="<?php echo 'controls_'.$vdivid; ?>" class="col-6 float-right item_icons item_icons_show" style="align:right;" align="right" >
					<a style="cursor:pointer;color:blue;"  onClick="showattribs('date_input', <?php echo $vdivid; ?>)" ><i class="bi bi-gear"></i></a>	
					<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $vdivid; ?>)" ><i class="bi bi-trash"></i></a>
					
				</span>
			</span>
			<span class="row">
				<span class="col-12" id="<?php echo 'input_'.$vdivid; ?>">
					<input type="date" name="<?php echo $vfield_name; ?>"  id="<?php echo $vfield_name; ?>"   class="form-control"  value=""
						<?php if($visrequired=='Y'){echo ' required '; } ?>  />
					<?php echo "<div style='color:red;font-size:12px;'>".$error[$vfield_name].'</div>'; ?>
				</span>
			</span>
				

<?php } else if($vitemtype=='text_area'){ ?>

			<span class="row">
				<span class="col-6 float-left" id="<?php echo 'label_'.$vdivid; ?>" >
					<label><?php echo $vfield_label; ?></label>
				</span>
				<span id="<?php echo 'controls_'.$vdivid; ?>" class="col-6 float-right item_icons item_icons_show" style="align:right;" align="right" >
					<a style="cursor:pointer;color:blue;"  onClick="showattribs('text_area', <?php echo $vdivid; ?>)" ><i class="bi bi-gear"></i></a>	
					<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $vdivid; ?>)" ><i class="bi bi-trash"></i></a>
				</span>
			</span>
			<span class="row">
				<span class="col-12" id="<?php echo 'input_'.$vdivid; ?>">
					<textarea  name="<?php echo $vfield_name; ?>"  id="<?php echo $vfield_name; ?>" <?php if($visrequired=='Y'){echo ' required '; } ?>  class="form-control"><?php echo $vdefault_value; ?></textarea>
					<?php echo "<div style='color:red;font-size:12px;'>".$error[$vfield_name].'</div>'; ?>
				</span>
			</span>
			

<?php } else if($vitemtype=='rich_text_editor'){ ?>
		
			<span class="row">
				<span class="col-9 float-left" id="<?php echo 'label_'.$vdivid; ?>" >
					<label style="background-color:white;font-size:18px"><?php echo $vfield_label; ?></label>
				</span>
				<span id="<?php echo 'controls_'.$vdivid; ?>" class="col-3 float-right item_icons item_icons_show" style="align:right;" align="right" >
					<a style="cursor:pointer;color:blue;"  onClick="showattribs('rich_text_editor', <?php echo $vdivid; ?>)" ><i class="bi bi-gear"></i></a>	
					<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $vdivid; ?>)" ><i class="bi bi-trash"></i></a>
				</span>
			</span>
			<span class="row">
				<span class="col-12" id="<?php echo 'input_'.$vdivid; ?>" >
					<textarea id="<?php echo 'rich_text_editor_'.$vdivid; ?>" class="form-control" style="width:100%" ></textarea>
					<script> new nicEditor({iconsPath : 'images/nicEditorIcons.gif'}).panelInstance('<?php echo "rich_text_editor_".$vdivid; ?>'); </script>
				</span>
			</span>
			
<?php } else if($vitemtype=='email_input'){ ?>

			<span class="row">
				<span class="col-6 float-left" id="<?php echo 'label_'.$vdivid; ?>" >
					<label><?php echo $vfield_label; ?></label>
				</span>
				<span id="<?php echo 'controls_'.$vdivid; ?>" class="col-6 float-right item_icons item_icons_show" style="align:right;" align="right" >
					<a style="cursor:pointer;color:blue;"  onClick="showattribs('password_input', <?php echo $vdivid; ?>)" ><i class="bi bi-gear"></i></a>	
					<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $vdivid; ?>)" ><i class="bi bi-trash"></i></a>
				</span>
			</span>
			<span class="row">
				<span class="col-12" id="<?php echo 'input_'.$vdivid; ?>">
					<input type="email" name="<?php echo $vfield_name; ?>"  id="<?php echo $vfield_name; ?>"   class="form-control"  value=""
						<?php if($visrequired=='Y'){echo ' required '; } ?>  />
					<?php echo "<div style='color:red;font-size:12px;'>".$error[$vfield_name].'</div>'; ?>
				</span>
			</span>
				
			
<?php } else if($vitemtype=='password_input'){ ?>

			<span class="row">
				<span class="col-6 float-left" id="<?php echo 'label_'.$vdivid; ?>" >
					<label><?php echo $vfield_label; ?></label>
				</span>
				<span id="<?php echo 'controls_'.$vdivid; ?>" class="col-6 float-right item_icons item_icons_show" style="align:right;" align="right" >
					<a style="cursor:pointer;color:blue;"  onClick="showattribs('password_input', <?php echo $vdivid; ?>)" ><i class="bi bi-gear"></i></a>	
					<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $vdivid; ?>)" ><i class="bi bi-trash"></i></a>
				</span>
			</span>
			<span class="row">
				<span class="col-12" id="<?php echo 'input_'.$vdivid; ?>">
					<input type="password" name="<?php echo $vfield_name; ?>"  id="<?php echo $vfield_name; ?>"   class="form-control"  value=""
						<?php if($visrequired=='Y'){echo ' required '; } ?>  />
					<?php echo "<div style='color:red;font-size:12px;'>".$error[$vfield_name].'</div>'; ?>
				</span>
			</span>
				
				
<?php } else if($vitemtype=='single_file') {?>

			
			<span class="row">
				<span class="col-6 float-left" id="<?php echo 'label_'.$vdivid; ?>" >
					<label><?php echo $vfield_label; ?> </label>
				</span>
				<span id="<?php echo 'controls_'.$vdivid; ?>" class="col-6 float-right item_icons item_icons_show" style="align:right;" align="right" >
					<a style="cursor:pointer;color:blue;"  onClick="showattribs('text_input', <?php echo $vdivid; ?>)" ><i class="bi bi-gear"></i></a>	
					<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $vdivid; ?>)" ><i class="bi bi-trash"></i></a>
				</span>
			</span>
			<span class="row">
				<span class="col-12" id="<?php echo 'input_'.$vdivid; ?>">
					<input type="file" name="<?php echo strtolower(str_replace(' ','_',$vfield_label)); ?>"  id="<?php echo strtolower(str_replace(' ','_',$vfield_label)); ?>"  class="form-control"  />
					<?php  echo "<div style='color:red;font-size:12px;'>".$error[$vfield_name].'</div>'; ?>
				</span>
			</span>
			
			
<?php } else if($vitemtype=='multiple_files'){ ?>

			<span class="row">
				<span class="col-6 float-left" id="<?php echo 'label_'.$vdivid; ?>" >
					<label><?php echo $vfield_label; ?> </label>
				</span>
				<span id="<?php echo 'controls_'.$vdivid; ?>" class="col-6 float-right item_icons item_icons_show" style="align:right;" align="right" >
					<a style="cursor:pointer;color:blue;"  onClick="showattribs('text_input', <?php echo $vdivid; ?>)" ><i class="bi bi-gear"></i></a>	
					<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $vdivid; ?>)" ><i class="bi bi-trash"></i></a>
				</span>
			</span>
			<span class="row">
				<span class="col-12" id="<?php echo 'input_'.$vdivid; ?>">
					<input type="file" multiple name="<?php echo strtolower(str_replace(' ','_',$vfield_label)); ?>[]"  id="<?php echo strtolower(str_replace(' ','_',$vfield_label)); ?>"  class="form-control" />
					<?php  echo "<div style='color:red;font-size:12px;'>".$error[$vfield_name].'</div>'; ?>
				</span>
			</span>
			
<?php } else if($vitemtype=='single_image'){  ?>

			<span class="row">
				<span class="col-6 float-left" id="<?php echo 'label_'.$vdivid; ?>" >
					<label><?php echo $vfield_label; ?> </label>
				</span>
				<span id="<?php echo 'controls_'.$vdivid; ?>" class="col-6 float-right item_icons item_icons_show" style="align:right;" align="right" >
					<a style="cursor:pointer;color:blue;"  onClick="showattribs('text_input', <?php echo $vdivid; ?>)" ><i class="bi bi-gear"></i></a>	
					<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $vdivid; ?>)" ><i class="bi bi-trash"></i></a>
				</span>
			</span>
			<span class="row">
				<span class="col-12" id="<?php echo 'input_'.$vdivid; ?>">
					<input type="file" name="<?php echo strtolower(str_replace(' ','_',$vfield_label)); ?>"  id="<?php echo strtolower(str_replace(' ','_',$vfield_label)); ?>"  class="form-control"  />
					<?php  echo "<div style='color:red;font-size:12px;'>".$error[$vfield_name].'</div>'; ?>
				</span>
			</span>
			
<?php } else if($vitemtype=='multiple_images'){  ?>

			<span class="row">
				<span class="col-6 float-left" id="<?php echo 'label_'.$vdivid; ?>" >
					<label><?php echo $vfield_label; ?> </label>
				</span>
				<span id="<?php echo 'controls_'.$vdivid; ?>" class="col-6 float-right item_icons item_icons_show" style="align:right;" align="right" >
					<a style="cursor:pointer;color:blue;"  onClick="showattribs('text_input', <?php echo $vdivid; ?>)" ><i class="bi bi-gear"></i></a>	
					<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $vdivid; ?>)" ><i class="bi bi-trash"></i></a>
				</span>
			</span>
			<span class="row">
				<span class="col-12" id="<?php echo 'input_'.$vdivid; ?>">
					<input type="file" multiple  name="<?php echo strtolower(str_replace(' ','_',$vfield_label)); ?>[]"  id="<?php echo strtolower(str_replace(' ','_',$vfield_label)); ?>"  class="form-control" />
					<?php  echo "<div style='color:red;font-size:12px;'>".$error[$vfield_name].'</div>'; ?>
				</span>
			</span>
			
<?php } else if($vitemtype=='check_box'){ ?>

			<span class="row">
				<span class="col-6 float-left" id="<?php echo 'label_'.$vdivid; ?>" >
					<label><input type="checkbox" name="<?php echo $vfield_name; ?>"  id="<?php echo $vfield_name; ?>"   value="Y"
						<?php if($visrequired=='Y'){echo ' required '; } ?>  /><?php echo $vfield_label; ?></label>
				</span>
				<span id="<?php echo 'controls_'.$vdivid; ?>" class="col-6 float-right item_icons item_icons_show" style="align:right;" align="right" >
					<a style="cursor:pointer;color:blue;"  onClick="showattribs('check_box', <?php echo $vdivid; ?>)" ><i class="bi bi-gear"></i></a>	
					<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $vdivid; ?>)" ><i class="bi bi-trash"></i></a>
				</span>
			</span>	

<?php } else if($vitemtype=='number_input'){ ?>

			<span class="row">
				<span class="col-6 float-left" id="<?php echo 'label_'.$vdivid; ?>" >
					<label><?php echo $vfield_label; ?></label>
				</span>
				<span id="<?php echo 'controls_'.$vdivid; ?>" class="col-6 float-right item_icons item_icons_show" style="align:right;" align="right" >
					<a style="cursor:pointer;color:blue;"  onClick="showattribs('number_input', <?php echo $vdivid; ?>)" ><i class="bi bi-gear"></i></a>	
					<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $vdivid; ?>)" ><i class="bi bi-trash"></i></a>
				</span>
			</span>
			<span class="row">
				<span class="col-12" id="<?php echo 'input_'.$vdivid; ?>">
					<input type="number" name="<?php echo $vfield_name; ?>"  id="<?php echo $vfield_name; ?>" min="<?php echo $vrange_min; ?>" max="<?php if($vrange_max>0){ echo $vrange_max; } ?>"  class="form-control"  value=""
						<?php if($visrequired=='Y'){echo ' required '; } ?>  />
					<?php echo "<div style='color:red;font-size:12px;'>".$error[$vfield_name].'</div>'; ?>
				</span>
			</span>
			
			
<?php } else if($vitemtype=='multi_choice'){ ?>

			<span class="row">
				<span class="col-6 float-left" id="<?php echo 'label_'.$vdivid; ?>" >
					<label><?php echo $vfield_label; ?></label>
				</span>
				<span id="<?php echo 'controls_'.$vdivid; ?>" class="col-6 float-right item_icons item_icons_show" style="align:right;" align="right" >
					<a style="cursor:pointer;color:blue;"  onClick="showattribs('drop_down', <?php echo $vdivid; ?>)" ><i class="bi bi-gear"></i></a>	
					<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $vdivid; ?>)" ><i class="bi bi-trash"></i></a>
				</span>
			</span>
			<span class="row">
				<span class="col-12" id="<?php echo 'input_'.$vdivid; ?>">
					<select name="<?php echo $vfield_name; ?>"  id="<?php echo $vfield_name; ?>"  class="form-control"  multiple="multiple"	<?php if($visrequired=='Y'){echo ' required '; } ?>  >
					<option value="">--Select--</option>
					<?php 
						$aritem_values = explode(',',$vitem_values);
						for( $i=0; $i<count($aritem_values); $i++ ){
							echo '<option value="'.strtolower(str_replace(' ','_',$aritem_values[$i])).'">'.$aritem_values[$i].'</option>';
						}
					?>
					</select>
				</span>
			</span>
			

<?php } else if($vitemtype=='drop_down'){ ?>

			
			<span class="row">
				<span class="col-6 float-left" id="<?php echo 'label_'.$vdivid; ?>" >
					<label><?php echo $vfield_label; ?></label>
				</span>
				<span id="<?php echo 'controls_'.$vdivid; ?>" class="col-6 float-right item_icons item_icons_show" style="align:right;" align="right" >
					<a style="cursor:pointer;color:blue;"  onClick="showattribs('drop_down', <?php echo $vdivid; ?>)" ><i class="bi bi-gear"></i></a>	
					<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $vdivid; ?>)" ><i class="bi bi-trash"></i></a>
				</span>
			</span>
			<span class="row">
				<span class="col-12" id="<?php echo 'input_'.$vdivid; ?>">
					<select name="<?php echo $vfield_name; ?>"  id="<?php echo $vfield_name; ?>"  class="form-control"  	<?php if($visrequired=='Y'){echo ' required '; } ?>  >
					<option value="">--Select--</option>
					<?php 
						$aritem_values = explode(',',$vitem_values);
						for( $i=0; $i<count($aritem_values); $i++ ){
							echo '<option value="'.strtolower(str_replace(' ','_',$aritem_values[$i])).'">'.$aritem_values[$i].'</option>';
						}
					?>
					</select>
				</span>
			</span>
			
			
			
<?php } else if($vitemtype=='referenced_data'){ ?>


			<span class="row">
				<span class="col-6 float-left" id="<?php echo 'label_'.$vdivid; ?>" >
					<label><?php echo $vfield_label; ?></label>
				</span>
				<span id="<?php echo 'controls_'.$vdivid; ?>" class="col-6 float-right item_icons item_icons_show" style="align:right;" align="right" >
					<a style="cursor:pointer;color:blue;"  onClick="showattribs('referenced_data', <?php echo $vdivid; ?>)" ><i class="bi bi-gear"></i></a>	
					<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $vdivid; ?>)" ><i class="bi bi-trash"></i></a>
				</span>
			</span>
			<span class="row">
				<span class="col-12" id="<?php echo 'input_'.$vdivid; ?>">
					
					<?php 
						$sqlrefdata = "select ".$vlistmoduleitem." from ".$vlistmodulename. " where active='Y' ";
						//echo $sqlrefdata;
						$resrefdata = mysqli_query($dbcon, $sqlrefdata);
						?>
					
					<select name="<?php echo $vfield_name; ?>"  id="<?php echo $vfield_name; ?>"  class="form-control"  	<?php if($visrequired=='Y'){echo ' required '; } ?>  >
					<option value="">--Select--</option>
					<?php
						while($rowrefdata = mysqli_fetch_array($resrefdata, mysqli_NUM)){ 
							echo '<option value="'.strtolower(str_replace(' ','_',$rowrefdata[0])).'">'.$rowrefdata[0].'</option>';
						}
					?>
					</select>
					
				</span>
			</span>
			

<?php } else if($vitemtype=='radio_button'){ ?>

			
				<span class="row">
					<span class="col-9 float-left" id="<?php echo 'label_'.$vdivid; ?>" >
						<label><?php echo $vfield_label; ?></label>
					</span>
					
					<span id="<?php echo 'controls_'.$vdivid; ?>" class="col-3 float-right item_icons item_icons_show" style="align:right;" align="right" >
						<a style="cursor:pointer;color:blue;"  onClick="showattribs('radio_button', <?php echo $vdivid; ?>)" ><i class="bi bi-gear"></i></a>	
						<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $vdivid; ?>)" ><i class="bi bi-trash"></i></a>
					</span>
				</span>
			
			<span class="row">
				<span class="col-12 float-left">
					<?php 
						$aritem_values = explode(',',$vitem_values);
						for( $i=0; $i<count($aritem_values); $i++ ){
							echo '<input type="radio" name="'.strtolower(str_replace(' ','_',$vfield_label)).'" value="'.strtolower(str_replace(' ','_',$aritem_values[$i])).'">&nbsp;'.$aritem_values[$i].'&nbsp;&nbsp;&nbsp;';
						}
					?>
				</span>
			</span>


<?php } else if($vitemtype=='submodule'){ 
			$vdefault_value = 150;
			$sqlmodl = "select 	m.module_name, m.page_name, m.module_type, m.menutype, m.add_page, m.edit_page, m.view_page, m.duplicate_page, m.list_page, m.application, m.module_descr, m.table_name, m.clientid, m.sql_script_file, m.php_script_files, m.config_file, 
							f.dznr_moduleid, f.field_label, f.field_name, f.field_type, f.isrequired, f.display_pos, f.default_value, f.range_min, f.range_max, f.list_type, f.item_values, f.staticlist, f.codelist, f.newcodelist, f.listmodulename, f.listmoduleitem, f.codes_list_name, f.onlistpag
						from dznr_modules m, dznr_module_fields f 
						where m.id = f.dznr_moduleid
						  and m.id = '150'
						  and m.active='Y' and f.active='Y'
						  and f.onlistpag = 'Y'
						  and m.clientid =  '4' ";                      // '".$clientid."' ";
						  
			//echo $sqlmodl;
			$resmodl = mysqli_query($dbcon, $sqlmodl);
		while($rowmodl = mysqli_fetch_assoc($resmodl)){
			
			$submodule_heading_row .= '<td style="border:1px solid black;background-color:gray;">'.$rowmodl["field_label"].'</td>';
			$submodule_data_row .= '<td style="border:1px solid black;height:20px;">'.'</td>';
		}
		
		
			 ?>
			
			<span class="row">
				
				<span id="<?php echo 'controls_'.$vdivid; ?>" class="col-12 float-right item_icons item_icons_show" style="align:right;" align="right" >
					<a style="cursor:pointer;color:blue;"  onClick="showattribs('submodule', <?php echo $vdivid; ?>)" ><i class="bi bi-gear"></i></a>	
					<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $vdivid; ?>)" ><i class="bi bi-trash"></i></a>
				</span>
			</span>
			
			<span class="row">
				<span class="col-12" id="<?php echo 'input_'.$vdivid; ?>">
					<table width="100%">
					<tr bgcolor="#ccccff">
						<td><h4 align="left"><b><?php echo $vfield_label; ?></b></h4></td>
					</tr></table>
				
					<div id="row-fluid" style="overflow:scroll;">
						<table style="border: 1px solid gray;" id="table" width="100%">
							<tbody>
							<tr>
							<?php
								echo $submodule_heading_row;
							?>
							</tr>
							<tr>
							<?php
								echo $submodule_data_row;
							?>
							</tr>
							</tbody>
						</table>
					</div>
					
				</span>
			</span>
			
<?php } else { echo "Nothing to display for item type: ".$vitemtype; }?>
