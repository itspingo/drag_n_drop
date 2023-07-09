
<?php include_once("config.php");

	$vdivid = $_POST["vdivid"];  
	$vparent_grid_id_input=$_POST['vparent_grid_id_input'];  
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
			parent_grid_id = '".$vparent_grid_id_input."',
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
			
			parent_grid_id = '".$vparent_grid_id_input."',
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
					<script> new nicEditor({iconsPath : 'images/nicEditorIcons.gif'}).panelInstance('<?php echo "rich_text_editor_".$vdivid; ?>'); 
					$('.nicEdit-panelContain').parent().width('100%');
						$('.nicEdit-panelContain').parent().next().width('98%');
						$('.nicEdit-main').width('100%');</script>
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
			// $vdefault_value = 150;
			$sqlmodl = "select 	
			     m.module_name, m.page_name, m.module_type, m.menutype, m.add_page, m.edit_page, m.view_page, m.duplicate_page, m.list_page, m.application, m.module_descr, m.table_name, m.clientid, m.sql_script_file, m.php_script_files, m.config_file, 
				
				f.moduleid, f.field_label, f.field_name, f.field_type, f.isrequired, f.display_pos, f.default_value, f.range_min, f.range_max, f.list_type, f.item_values, f.staticlist, f.codelist, f.newcodelist, f.listmodulename, f.listmoduleitem, f.codes_list_name, f.onlistpag
						from dznr_modules m, dznr_module_fields f 
						   where 
						       m.id = f.moduleid
						   and m.id = '".$vdefault_value."'
						   and m.active='1' and f.active='Y'
						   and f.onlistpag = 'Y'
						   ";                      // '".$clientid."' ";
						  
			//echo $sqlmodl;
			$resmodl = mysqli_query($dbcon, $sqlmodl);
		while($rowmodl = mysqli_fetch_assoc($resmodl)){
			
			$submodule_heading_row .= '<td style="border:1px solid black;background-color:gray;">'.$rowmodl["field_label"].'</td>';
			$submodule_data_row .= '<td style="border:1px solid black;height:20px;">'.'</td>';
		}
		
		
			 ?>
			
			<span class="row">
				
				<span id="<?php //echo 'controls_'.$vdivid; ?>" class="col-12 float-right item_icons item_icons_show" style="align:right;" align="right" >
					<a style="cursor:pointer;color:blue;"  onClick="showattribs('submodule', <?php echo $vdivid; ?>)" ><i class="bi bi-gear"></i></a>	
					<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $vdivid; ?>)" ><i class="bi bi-trash"></i></a>
				</span>
			</span>
			
			<span class="row">
				<span class="col-12" id="<?php echo 'input_'.$vdivid; ?>">
						 <table width="100%">
									<tr bgcolor="#ccccff">
										<td>
											<h4 align="left"><b><?php echo $vfield_label; ?></b></h4>
										</td>
									</tr>
								</table>
				
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

<?php } else if($vitemtype=='tab_link'){ ?>

			
				<span><?php echo $vfield_label; ?></span>
				<span id="controls_<?php echo str_replace("tablink", "", $vdivid) ; ?>" class="col-12 float-right item_icons item_icons_show" style="font-size: 12px; margin-left: 30px;">
					<a style="cursor:pointer;color:blue;" onclick="showattribs('tab_link', '<?php echo $vdivid; ?>')" draggable="false">
						<i class="bi bi-gear"></i>
					</a>
					<a style="cursor:pointer;color:red;" onclick="remove_tab_item('<?php echo substr($vdivid, strlen("tablink")); ?>')" draggable="false">
						<i class="bi bi-trash"></i>
					</a>
				</span>

			
			
<?php } else if($vitemtype=='grid-12'){ ?>

			
				
				 <span class="row" >	
					<span id="<?php echo 'controls_'.$vdivid; ?>" class="col-12 float-right item_icons item_icons_show" style="align:right;" align="right" >
						<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $vdivid; ?>)" ><i class="bi bi-trash"></i></a>
					</span>
				</span>
				 <span class="row" >
					<span class="col-12 dropzone"  ></span>
				</span>
			

			
			
<?php }


else if($vitemtype=='grid-6'){ ?>

			
				
				<span class="row" >	
					<span id="<?php echo 'controls_'.$vdivid; ?>" class="col-12 float-right item_icons item_icons_show" style="align:right;" align="right" >
						<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $vdivid; ?>)" ><i class="bi bi-trash"></i></a>
					</span>
				</span>
				 <span class="row" >
					<span class="col-6 dropzone" data-grid-position="0"  ></span>
					<span class="col-6 dropzone" data-grid-position="1"></span>
				</span>
			

			
			
<?php }


else if($vitemtype=='grid-4'){ ?>

			
				<span class="row" >	
					<span id="<?php echo 'controls_'.$vdivid; ?>" class="col-12 float-right item_icons item_icons_show" style="align:right;" align="right" >
						<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $vdivid; ?>)" ><i class="bi bi-trash"></i></a>
					</span>
				</span>
				 <span class="row" >
					<span class="col-4 dropzone" data-grid-position="0"></span>
					<span class="col-4 dropzone" data-grid-position="1"></span>
					<span class="col-4 dropzone" data-grid-position="2"></span>
				</span>
			

			
			
<?php }


else if($vitemtype=='grid-3'){ ?>

			
				
				 <span class="row" >	
					<span id="<?php echo 'controls_'.$vdivid; ?>" class="col-12 float-right item_icons item_icons_show" style="align:right;" align="right" >
						<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $vdivid; ?>)" ><i class="bi bi-trash"></i></a>
					</span>
				</span>
				 <span class="row" >
					<span class="col-3 dropzone" data-grid-position="0"></span>
					<span class="col-3 dropzone" data-grid-position="1"></span>
					<span class="col-3 dropzone" data-grid-position="2"></span>
					<span class="col-3 dropzone" data-grid-position="3"></span>
				</span>
			

			
			
<?php }
 else if($vitemtype =="Incremental_tabs"){ ?>
<span class="row" >
	<span id="<?php echo 'controls_'.$vdivid; ?>" class="col-12 float-right item_icons item_icons_show" style="align:right;" align="right" >	
		<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $vdivid; ?>)">
			<i class="bi bi-trash"></i>
		</a>
	</span>
</span>


<span class="row">
	<span class="col-12" id="<?php echo 'input_'.$vdivid; ?>" >
		<span id="<?php echo 'tabsContainer_'.$vdivid; ?>" >
			<span class="nav nav-tabs" id="myTabs">


	<?php
	$query="SELECT * FROM `dznr_module_fields` WHERE parent_grid_id=$vdivid";
	//echo $sqlmodl;
	$res = mysqli_query($dbcon, $query);
	while($row = mysqli_fetch_assoc($res))
	{ 
	?>
	<span class="nav-item" role="presentation">
	<a class="nav-link active" href="#tab<?php echo str_replace("tablink", "", $row['divid']) ?>" id="<?php echo $row['divid']?>" data-bs-toggle="tab" aria-selected="true" role="tab">
	<span>Tab 1</span> 
	<span id="controls_1_48837" class="col-12 float-right item_icons item_icons_show" style="font-size: 12px; margin-left: 30px;">
	<a style="cursor:pointer;color:blue;" onclick="showattribs('tab_link', '<?php echo $row['divid']?>')">
	<i class="bi bi-gear"></i>
	</a>
	<a style="cursor:pointer;color:red;" onclick="remove_tab_item('<?php echo str_replace("tablink", "",$row['divid'] )?>')">
	<i class="bi bi-trash"></i>
	</a>
	</span>
	</a>

	<?php
	}
	?>





	<span class="nav-item">
	<a id="<?php echo 'addTabBtn_'.$vdivid; ?>" class="nav-link btn btn-primary"  data-bs-toggle="tab" aria-selected="true" role="tab">+</a>
	</span>



	</span>
			</span>

			<span class="<?php echo 'tab-content_'.$vdivid; ?>  tab-content mt-3" >
						<?php
	$query="SELECT * FROM `dznr_module_fields` WHERE parent_grid_id=$vdivid";
	//echo $sqlmodl;
	$i=1;
	$res = mysqli_query($dbcon, $query);
	while($row = mysqli_fetch_assoc($res))

	{ 
	?>
	<span class="tab-pane fade active show" id="tab<?php echo str_replace("tablink", "",$row['divid'] )?>" data-tab-number="tab<?php echo $i;?>" role="tabpanel" aria-labelledby="#<?php echo $row['divid']?>"><span class="dropzone list-group tab-parent mt-3"> </span></span>
	
	<?php $i++; } ?>
			</span>


		
		</span>
	</span>

				
				<script type="text/javascript">
	(function() {

  const tabsContainer = document.getElementById('tabsContainer_<?php echo $vdivid; ?>');
  const addTabBtn = document.getElementById('addTabBtn_<?php echo $vdivid; ?>');
  var mytarget;
  let tabCounter = <?php echo $i ?>;

  addTabBtn.addEventListener('click', () => {
    const newTab = document.createElement('span');
    newTab.classList.add('nav-item');

    const newTabLink = document.createElement('a');
    newTabLink.classList.add('nav-link');
    newTabLink.href = `#tab${tabCounter}_<?php echo $vdivid; ?>`;
    newTabLink.id = 'tablink' + tabCounter +'_<?php echo $vdivid; ?>';
    newTabLink.setAttribute('data-bs-toggle', 'tab');
    newTabLink.setAttribute('aria-selected', 'true');
    newTabLink.setAttribute('role', 'tab');
    
    newTabLink.innerHTML = `<span >Tab ${tabCounter}</span> `;

    newTab.appendChild(newTabLink);

    const activeTab = tabsContainer.querySelector('span.nav-item.active');
    if (activeTab) { activeTab.classList.remove('active'); }

    tabsContainer.querySelector('span.nav-tabs').insertBefore(newTab, addTabBtn.parentNode);

    const tabPane = document.createElement('span');
    tabPane.classList.add('tab-pane', 'fade');
    tabPane.id = `tab${tabCounter}_<?php echo $vdivid; ?>`;
    tabPane.setAttribute('data-tab-number', `tab${tabCounter}`);
    tabPane.innerHTML = `<span  class="dropzone list-group tab-parent mt-3"  > </span>`;

    tabsContainer.parentElement.querySelector('.tab-content_<?php echo $vdivid; ?>').appendChild(tabPane);

    // Activate the newly added tab
    new bootstrap.Tab(newTabLink).show();


    // Apply jQuery styling
    $(tabPane).on('show.tab', function() {
    
      $(this).css({
        'display': 'block',
        'opacity': '1'
      });
    }).on('hide.tab', function() {
      $(this).css({
        'display': 'none',
        'opacity': ''
      });
    });
const controlsSpan = document.createElement('span');
    controlsSpan.id = `controls_${tabCounter}_<?php echo $vdivid; ?>`;
    controlsSpan.className = 'col-12 float-right item_icons item_icons_show';
    controlsSpan.style.cssText = 'font-size:12px; margin-left:30px';

    controlsSpan.innerHTML = `
      <a style="cursor:pointer;color:blue;" onClick="showattribs('tab_link', 'tablink${tabCounter}_<?php echo $vdivid; ?>')"><i class="bi bi-gear"></i></a>
      <a style="cursor:pointer;color:red;" onClick="remove_tab_item('${tabCounter}_<?php echo $vdivid; ?>')"><i class="bi bi-trash"></i></a>
    `;
    newTabLink.appendChild(controlsSpan);
    newTabLink.addEventListener('show.bs.tab', () => {
    controlsSpan.style.display = 'inline';
});

newTabLink.addEventListener('hide.bs.tab', () => {
  controlsSpan.style.display = 'none';
});


tabsContainer.addEventListener('show.bs.tab', (event) => {
    const targetTabLink = event.target;
    let tabContentId = targetTabLink.getAttribute('id');
    tabContentId = tabContentId.replace("tablink", "");
    const controlsSpan = document.querySelector(`#controls_${tabContentId}`);
  
    controlsSpan.style.display = 'inline';
  });
    tabsContainer.addEventListener('hide.bs.tab', (event) => {
    const targetTabLink = event.target;
    let tabContentId = targetTabLink.getAttribute('id');
    tabContentId = tabContentId.replace("tablink", "");
    const controlsSpan = document.querySelector(`#controls_${tabContentId}`);
  
    controlsSpan.style.display = 'none';
  });









    tabCounter++;
  });

  addTabBtn.click();
  document.addEventListener('DOMContentLoaded', () => {
    const myTabs = new bootstrap.Tab(tabsContainer);
    myTabs.show();
    addTabBtn.style.display = 'inline-block';
  });
})();

	</script>
		
 <?php }
 else { 

 	echo "Nothing to display for item type: ".$vitemtype;

 	 }?>
