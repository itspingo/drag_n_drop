<label>Grid Columns</label>
			
			<p  id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"   class="list-group-item" style="margin-left:10px; margin-right:10px;" >
				 <span class="row" >	
					<span id="<?php echo 'controls_'.$itmid; ?>" class="col-12 float-right item_icons item_icons_show" style="align:right;display:none;" align="right" >
						<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $itmid; ?>)" ><i class="bi bi-trash"></i></a>
					</span>
				</span>
				 <span class="row" >
					<span class="col-12 dropzone" ></span>
				</span>
			</p>
			
			<p  id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item"  style="margin-left:10px; margin-right:10px;" >
				 <span class="row" >	
					<span id="<?php echo 'controls_'.$itmid; ?>" class="col-12 float-right item_icons item_icons_show" style="align:right;display:none;" align="right" >
						<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $itmid; ?>)" ><i class="bi bi-trash"></i></a>
					</span>
				</span>
				 <span class="row" >
					<span class="col-6 dropzone" ></span>
					<span class="col-6 dropzone" ></span>
				</span>
			</p>
			
			<p  id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item" style="margin-left:10px; margin-right:10px;">
				 <span class="row" >	
					<span id="<?php echo 'controls_'.$itmid; ?>" class="col-12 float-right item_icons item_icons_show" style="align:right;display:none;" align="right" >
						<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $itmid; ?>)" ><i class="bi bi-trash"></i></a>
					</span>
				</span>
				 <span class="row" >
					<span class="col-4 dropzone" ></span>
					<span class="col-4 dropzone" ></span>
					<span class="col-4 dropzone" ></span>
				</span>
			</p>
			
			<p  id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item" style="margin-left:10px; margin-right:10px;" >
				<span class="row" >	
					<span id="<?php echo 'controls_'.$itmid; ?>" class="col-12 float-right item_icons item_icons_show" style="align:right;display:none;" align="right" >
						<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $itmid; ?>)" ><i class="bi bi-trash"></i></a>
					</span>
				</span>
				 <span class="row" >
					<span class="col-3 dropzone" ></span>
					<span class="col-3 dropzone" ></span>
					<span class="col-3 dropzone" ></span>
					<span class="col-3 dropzone" ></span>
				</span>
			</p>
			
			
			
			
			<p name="text_input"  id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item" >
				
					<span class="row">
						<span class="col-9 float-left" id="<?php echo 'label_'.$itmid; ?>" >
							<label>Text Input</label>
						</span>
						<span id="<?php echo 'controls_'.$itmid; ?>" class="col-3 float-right item_icons item_icons_show" style="align:right;display:none;" align="right" >
							<a style="cursor:pointer;color:blue;"  onClick="showattribs('text_input', <?php echo $itmid; ?>)" ><i class="bi bi-gear"></i></a>	
							<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $itmid; ?>)" ><i class="bi bi-trash"></i></a>
							
						</span>
					</span>
					<span class="row">
						<span class="col-12" id="<?php echo 'input_'.$itmid; ?>">
							<input type="text" class="form-control" />
						</span>
					</span>
				
			</p>
			
			<p name="number_input" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item" >
				
					<span class="row">
						<span class="col-9 float-left" id="<?php echo 'label_'.$itmid; ?>" >
							<label>Number Input</label>
						</span>
						<span id="<?php echo 'controls_'.$itmid; ?>" class="col-3 float-right item_icons item_icons_show" style="align:right;display:none;" align="right" >
							<a style="cursor:pointer;color:blue;"  onClick="showattribs('number_input', <?php echo $itmid; ?>)" ><i class="bi bi-gear"></i></a>	
							<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $itmid; ?>)" ><i class="bi bi-trash"></i></a>
							
						</span>
					</span>
					<span class="row">
						<span class="col-12" id="<?php echo 'input_'.$itmid; ?>">
							<input type="number" class="form-control" />
						</span>
					</span>
				
			</p>
			
			<p name="date_input" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item" >
				<span>
					<span class="row">
						<span class="col-9 float-left" id="<?php echo 'label_'.$itmid; ?>" >
							<label>Date Input</label>
						</span>
						<span id="<?php echo 'controls_'.$itmid; ?>" class="col-3 float-right item_icons item_icons_show" style="align:right;display:none;" align="right" >
							<a style="cursor:pointer;color:blue;"  onClick="showattribs('date_input', <?php echo $itmid; ?>)" ><i class="bi bi-gear"></i></a>	
							<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $itmid; ?>)" ><i class="bi bi-trash"></i></a>
							
						</span>
					</span>
					<span class="row">
						<span class="col-12" id="<?php echo 'input_'.$itmid; ?>">
							<input type="date" class="form-control" />
						</span>
					</span>
				</span>
			</p>
			
			<p name="password_input" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item" >
				<span>
					<span class="row">
						<span class="col-9 float-left" id="<?php echo 'label_'.$itmid; ?>" >
							<label>Password Input</label>
						</span>
						<span id="<?php echo 'controls_'.$itmid; ?>" class="col-3 float-right item_icons item_icons_show" style="align:right;display:none;" align="right" >
							<a style="cursor:pointer;color:blue;"  onClick="showattribs('password_input', <?php echo $itmid; ?>)" ><i class="bi bi-gear"></i></a>	
							<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $itmid; ?>)" ><i class="bi bi-trash"></i></a>
							
						</span>
					</span>
					<span class="row">
						<span class="col-12" id="<?php echo 'input_'.$itmid; ?>">
							<input type="password" class="form-control" />
						</span>
					</span>
				</span>
			</p>
			
			<p name="email_input" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item" >
				<span>
					<span class="row">
						<span class="col-9 float-left" id="<?php echo 'label_'.$itmid; ?>" >
							<label>Email Address</label>
						</span>
						<span id="<?php echo 'controls_'.$itmid; ?>" class="col-3 float-right item_icons item_icons_show" style="align:right;display:none;" align="right" >
							<a style="cursor:pointer;color:blue;"  onClick="showattribs('email_input', <?php echo $itmid; ?>)" ><i class="bi bi-gear"></i></a>	
							<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $itmid; ?>)" ><i class="bi bi-trash"></i></a>
							
						</span>
					</span>
					<span class="row">
						<span class="col-12" id="<?php echo 'input_'.$itmid; ?>">
							<input type="email" class="form-control" />
						</span>
					</span>
				</span>
			</p>
			
			<p name="url_input" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item" >
				<span>
					<span class="row">
						<span class="col-9 float-left" id="<?php echo 'label_'.$itmid; ?>" >
							<label>URL Input</label>
						</span>
						<span id="<?php echo 'controls_'.$itmid; ?>" class="col-3 float-right item_icons item_icons_show" style="align:right;display:none;" align="right" >
							<a style="cursor:pointer;color:blue;"  onClick="showattribs('url_input', <?php echo $itmid; ?>)" ><i class="bi bi-gear"></i></a>	
							<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $itmid; ?>)" ><i class="bi bi-trash"></i></a>
							
						</span>
					</span>
					<span class="row">
						<span class="col-12" id="<?php echo 'input_'.$itmid; ?>">
							<input type="url" class="form-control" />
						</span>
					</span>
				</span>
			</p>
			
			<p name="display_input" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item" >
				<span>
					<span class="row">
						<span class="col-9 float-left" id="<?php echo 'label_'.$itmid; ?>" >
							<label>Display Item</label>
						</span>
						<span id="<?php echo 'controls_'.$itmid; ?>" class="col-3 float-right item_icons item_icons_show" style="align:right;display:none;" align="right" >
							<a style="cursor:pointer;color:blue;"  onClick="showattribs('display_input', <?php echo $itmid; ?>)" ><i class="bi bi-gear"></i></a>	
							<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $itmid; ?>)" ><i class="bi bi-trash"></i></a>
							
						</span>
					</span>
					<span class="row">
						<span class="col-12" id="<?php echo 'input_'.$itmid; ?>">
							<input type="text" disabled class="form-control" />
						</span>
					</span>
				</span>
			</p>
			
			<p name="nondb_input" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item" >
				<span>
					<span class="row">
						<span class="col-9 float-left" id="<?php echo 'label_'.$itmid; ?>" >
							<label>Non-DB Input</label>
						</span>
						<span id="<?php echo 'controls_'.$itmid; ?>" class="col-3 float-right item_icons item_icons_show" style="align:right;display:none;" align="right" >
							<a style="cursor:pointer;color:blue;"  onClick="showattribs('nondb_input', <?php echo $itmid; ?>)" ><i class="bi bi-gear"></i></a>	
							<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $itmid; ?>)" ><i class="bi bi-trash"></i></a>
							
						</span>
					</span>
					<span class="row">
						<span class="col-12" id="<?php echo 'input_'.$itmid; ?>">
							<input type="text" class="form-control" />
						</span>
					</span>
				</span>
			</p>
			
			<p name="text_area" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item" >
				<span>
				<span class="row">
						<span class="col-9 float-left" id="<?php echo 'label_'.$itmid; ?>" >
							<label>Text Area</label>
					</span>
						<span id="<?php echo 'controls_'.$itmid; ?>" class="col-3 float-right item_icons item_icons_show" style="align:right;display:none;" align="right" >
							<a style="cursor:pointer;color:blue;"  onClick="showattribs('text_area', <?php echo $itmid; ?>)" ><i class="bi bi-gear"></i></a>	
							<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $itmid; ?>)" ><i class="bi bi-trash"></i></a>
							
						</span>
					</span>
					<span class="row">
						<span class="col-12" id="<?php echo 'input_'.$itmid; ?>">
						<textarea class="form-control" ></textarea>
						</span>
					</span>
				</span>
			</p>
			
			<p name="drop_down" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item" >
				<span>
					<span class="row">
						<span class="col-9 float-left" id="<?php echo 'label_'.$itmid; ?>" >
							<label>Drop Down</label>
						</span>
						<span id="<?php echo 'controls_'.$itmid; ?>" class="col-3 float-right item_icons item_icons_show" style="align:right;display:none;" align="right" >
							<a style="cursor:pointer;color:blue;"  onClick="showattribs('drop_down', <?php echo $itmid; ?>)" ><i class="bi bi-gear"></i></a>	
							<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $itmid; ?>)" ><i class="bi bi-trash"></i></a>
							
						</span>
					</span>
					<span class="row">
						<span class="col-12" id="<?php echo 'input_'.$itmid; ?>">
							<select class="form-control" >
								<option>A</option>
								<option>B</option>
								<option>C</option>
							</select>
						</span>
					</span>
				</span>
			</p>
			
			<p name="multi_choice" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item" >
				<span>
					<span class="row">
						<span class="col-9 float-left" id="<?php echo 'label_'.$itmid; ?>" >
							<label>Multi Choice</label>
						</span>
						<span id="<?php echo 'controls_'.$itmid; ?>" class="col-3 float-right item_icons item_icons_show" style="align:right;display:none;" align="right" >
							<a style="cursor:pointer;color:blue;"  onClick="showattribs('multi_choice', <?php echo $itmid; ?>)" ><i class="bi bi-gear"></i></a>	
							<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $itmid; ?>)" ><i class="bi bi-trash"></i></a>
							
						</span>
					</span>
					<span class="row">
						<span class="col-12" id="<?php echo 'input_'.$itmid; ?>">
							<select class="form-control" multiple >
								<option>A</option>
								<option>B</option>
								<option>C</option>
							</select>
						</span>
					</span>
				</span>
			</p>
				
				
				
			<p name="column_heading" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item" >
				<span>
					<span class="row">						
						<span id="<?php echo 'controls_'.$itmid; ?>" class="col-12 float-right item_icons item_icons_show" style="align:right;display:none;" align="right" >
							<a style="cursor:pointer;color:blue;"  onClick="showattribs('column_heading', <?php echo $itmid; ?>)" ><i class="bi bi-gear"></i></a>	
							<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $itmid; ?>)" ><i class="bi bi-trash"></i></a>
							
						</span>
					</span>
					<span class="row">
						<span class="col-12 float-left" id="<?php echo 'label_'.$itmid; ?>" >
							<span class="font-size:34px;"><b>Column Heading</b></span>
						</span>
					</span>
				</span>
			</p>
			
			
		
			<p name="check_box" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item" >
				<span class="row">
					<span class="col-9 float-left" id="<?php echo 'label_'.$itmid; ?>" >
						<label><input type="checkbox" /> Ceck Box</label>
					</span>
					<span id="<?php echo 'controls_'.$itmid; ?>" class="col-3 float-right item_icons item_icons_show" style="align:right;display:none;" align="right" >
						<a style="cursor:pointer;color:blue;"  onClick="showattribs('check_box', <?php echo $itmid; ?>)" ><i class="bi bi-gear"></i></a>	
						<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $itmid; ?>)" ><i class="bi bi-trash"></i></a>
					</span>
				</span>
			</p>
			
			<p name="radio_button" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item" >
				<span class="row">
					<span class="col-9 float-left" id="<?php echo 'label_'.$itmid; ?>" >
						<label><input type="radio"  /> Radio Button</label>
					</span>
					
					<span id="<?php echo 'controls_'.$itmid; ?>" class="col-3 float-right item_icons item_icons_show" style="align:right;display:none;" align="right" >
						<a style="cursor:pointer;color:blue;"  onClick="showattribs('radio_button', <?php echo $itmid; ?>)" ><i class="bi bi-gear"></i></a>	
						<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $itmid; ?>)" ><i class="bi bi-trash"></i></a>
					</span>
				</span>
			</p>
			
			
			
			<p name="single_file" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item" >
				<span>
					<span class="row">
						<span class="col-9 float-left" id="<?php echo 'label_'.$itmid; ?>" >
							<label>Single File Upload</label>
						</span>
						<span id="<?php echo 'controls_'.$itmid; ?>" class="col-3 float-right item_icons item_icons_show" style="align:right;display:none;" align="right" >
							<a style="cursor:pointer;color:blue;"  onClick="showattribs('single_file', <?php echo $itmid; ?>)" ><i class="bi bi-gear"></i></a>	
							<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $itmid; ?>)" ><i class="bi bi-trash"></i></a>
							
						</span>
					</span>
					<span class="row">
						<span class="col-12" id="<?php echo 'input_'.$itmid; ?>">
							<input type="file" class="form-control" />
						</span>
					</span>
				</span>
			</p>
			
			<p name="multiple_files" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item" >
				<span>
					<span class="row">
						<span class="col-9 float-left" id="<?php echo 'label_'.$itmid; ?>" >
							<label>Multiple Files Upload</label>
						</span>
						<span id="<?php echo 'controls_'.$itmid; ?>" class="col-3 float-right item_icons item_icons_show" style="align:right;display:none;" align="right" >
							<a style="cursor:pointer;color:blue;"  onClick="showattribs('multiple_files', <?php echo $itmid; ?>)" ><i class="bi bi-gear"></i></a>	
							<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $itmid; ?>)" ><i class="bi bi-trash"></i></a>
							
						</span>
					</span>
					<span class="row">
						<span class="col-12" id="<?php echo 'input_'.$itmid; ?>">
							<input type="file" multiple class="form-control" />
						</span>
					</span>
				</span>
			</p>
			
			<p name="single_image" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item" >
				<span>
					<span class="row">
						<span class="col-9 float-left" id="<?php echo 'label_'.$itmid; ?>" >
							<label>Single image Upload</label>
						</span>
						<span id="<?php echo 'controls_'.$itmid; ?>" class="col-3 float-right item_icons item_icons_show" style="align:right;display:none;" align="right" >
							<a style="cursor:pointer;color:blue;"  onClick="showattribs('single_image', <?php echo $itmid; ?>)" ><i class="bi bi-gear"></i></a>	
							<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $itmid; ?>)" ><i class="bi bi-trash"></i></a>
							
						</span>
					</span>
					<span class="row">
						<span class="col-12" id="<?php echo 'input_'.$itmid; ?>">
							<input type="file" class="form-control" />
						</span>
					</span>
				</span>
			</p>
			
			<p name="multiple_images" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item" >
				<span>
					<span class="row">
						<span class="col-9 float-left" id="<?php echo 'label_'.$itmid; ?>" >
							<label>Multiple images Upload</label>
						</span>
						<span id="<?php echo 'controls_'.$itmid; ?>" class="col-3 float-right item_icons item_icons_show" style="align:right;display:none;" align="right" >
							<a style="cursor:pointer;color:blue;"  onClick="showattribs('multiple_images', <?php echo $itmid; ?>)" ><i class="bi bi-gear"></i></a>	
							<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $itmid; ?>)" ><i class="bi bi-trash"></i></a>
							
						</span>
					</span>
					<span class="row">
						<span class="col-12" id="<?php echo 'input_'.$itmid; ?>">
							<input type="file" multiple class="form-control" />
						</span>
					</span>
				</span>
			</p>
			
				
			<p name="referenced_data" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item" >
				<span>
					<span class="row">
						<span class="col-9 float-left" id="<?php echo 'label_'.$itmid; ?>" >
							<label>Reference Data Column</label>
						</span>
						<span id="<?php echo 'controls_'.$itmid; ?>" class="col-3 float-right item_icons item_icons_show" style="align:right;display:none;" align="right" >
							<a style="cursor:pointer;color:blue;"  onClick="showattribs('referenced_data', <?php echo $itmid; ?>)" ><i class="bi bi-gear"></i></a>	
							<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $itmid; ?>)" ><i class="bi bi-trash"></i></a>
							
						</span>
					</span>
					<span class="row">
						<span class="col-12" id="<?php echo 'input_'.$itmid; ?>">
							<select class="form-control" >
								<option>--Select--</option>
								<option>Col Val A</option>
								<option>Col Val B</option>
								<option>Col Val C</option>
							</select>
						</span>
					</span>
				</span>
			</p>
			
			
			<p name="rich_text_editor" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"   >
				
					<span class="row">
						<span class="col-9 float-left" id="<?php echo 'label_'.$itmid; ?>" >
							<label style="background-color:white;font-size:18px">Rich Text Editor</label>
						</span>
						<span id="<?php echo 'controls_'.$itmid; ?>" class="col-3 float-right item_icons item_icons_show" style="align:right;display:none" align="right" >
							<a style="cursor:pointer;color:blue;"  onClick="showattribs('rich_text_editor', <?php echo $itmid; ?>)" ><i class="bi bi-gear"></i></a>	
							<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $itmid; ?>)" ><i class="bi bi-trash"></i></a>
						</span>
					</span>
					<span class="row">
						<span class="col-12" id="<?php echo 'input_'.$itmid; ?>" >
							<textarea id="<?php echo 'rich_text_editor_'.$itmid; ?>" class="form-control" style="width:100%" ></textarea>
							<script> new nicEditor({iconsPath : 'images/nicEditorIcons.gif'}).panelInstance('<?php echo "rich_text_editor_".$itmid; ?>'); </script>
						</span>
					</span>
				
			</p>
			
			
			
			<p name="submodule" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item" style="margin-left:10px;margin-right:10px;" >
				
					<span class="row" style="background-color:#ccccff;">
						<span class="col-9 float-left" id="<?php echo 'label_'.$itmid; ?>" >
							<label style="font-size:20px"><b>Sub-Module</b></label>
						</span>
						<span id="<?php echo 'controls_'.$itmid; ?>" class="col-3 float-right item_icons item_icons_show" style="align:right;display:none;" align="right" >
							<a style="cursor:pointer;color:blue;"  onClick="showattribs('submodule', <?php echo $itmid; ?>)" ><i class="bi bi-gear"></i></a>	
							<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $itmid; ?>)" ><i class="bi bi-trash"></i></a>
						</span>
					</span>
					<span class="row">
						<span class="col-12" id="<?php echo 'input_'.$itmid; ?>">
							<span class="row" style="background-color:grey;border:1px solid grey">								
									<span class="col-4" style="border:1px solid grey">Col 1</span><span class="col-4"  style="border:1px solid grey" >Col 2</span><span class="col-4"  style="border:1px solid grey" >Col..</span>
							</span>	
							<span class="row" style="background-color:white;border:1px solid grey">
									<span class="col-4"  style="border:1px solid grey" >Val 1</span><span class="col-4"  style="border:1px solid grey" >Val 2</span><span class="col-4"  style="border:1px solid grey" >Val..</span>
							</span>
						</span>
					</span>
				
			</p>
			