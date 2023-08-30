<center>
  <div style="width: 90%; ">
    <label> Grid Columns</label>
    <!-- Grid 12 Starts Here -->
		<span class="list-group-item grid-col mb-3" draggable="true" style="padding-right:0px" id="<?php $itmid = rand(1,99999); echo "iconItem_".$itmid; ?>" >

			<span class="d-block text-body-emphasis text-decoration-none " >
				<span class="d-block   text-center rounded icon-box">
					<img  draggable="false" src="images/grid-12.png">
				</span>
			</span>

			<span id="<?php echo 'actualItem_'.$itmid; ?>" style="display: none;">
				<div name="grid-12" id="<?php echo $itmid; ?>" draggable="true"   class="list-group-item grid-col mb-3" style="margin-left:10px; margin-right:10px;" data-item-seq="0" data-item-grid="grid-12">
					<span class="row" >	
						<span id="<?php echo 'controls_'.$itmid; ?>" class="col-12 float-right item_icons item_icons_show" style="align:right;display:none;" align="right" >
							<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $itmid; ?>)" ><i class="bi bi-trash"></i></a>
						</span>
					</span>
					<span class="row" >
						<span class="col-12 dropzone"></span>
					</span>
				</div>
			</span>
		</span>
    <!-- Grid 12 Ends Here -->

    <!-- Grid 6 Starts Here -->
		<span class="list-group-item grid-col mb-3" draggable="true" style="padding-right:0px" id="<?php $itmid = rand(1,99999); echo "iconItem_".$itmid; ?>" >

			<span class="d-block text-body-emphasis text-decoration-none " >
				<span class="d-block   text-center rounded icon-box">
					<img  draggable="false" src="images/grid-6.png">
				</span>
			</span>

			<span id="<?php echo 'actualItem_'.$itmid; ?>" style="display: none;">
				<div name="grid-6" id="<?php echo $itmid; ?>" draggable="true"    class="list-group-item grid-col mb-3"  data-item-grid="grid-6" style="margin-left:10px; margin-right:10px;" data-item-seq="0" >
					<span class="row" >	
						<span id="<?php echo 'controls_'.$itmid; ?>" class="col-12 float-right item_icons item_icons_show" style="align:right;display:none;" align="right" >
							<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $itmid; ?>)" ><i class="bi bi-trash"></i></a>
						</span>
					</span>
					<span class="row" >
						<span class="col-6 dropzone" data-grid-position="0"></span>
						<span class="col-6 dropzone" data-grid-position="1"></span>
					</span>
				</div>
			</span>
		</span>
    <!-- Grid 6 Ends Here -->

    <!-- Grid 4 Starts Here -->
		<span class="list-group-item grid-col mb-3" draggable="true" style="padding-right:0px" id="<?php $itmid = rand(1,99999); echo "iconItem_".$itmid; ?>" >

			<span class="d-block text-body-emphasis text-decoration-none " >
				<span class="d-block text-center rounded icon-box">
					<img  draggable="false" src="images/grid-4.png">
				</span>
			</span>

			<span id="<?php echo 'actualItem_'.$itmid; ?>" style="display: none;">
				<div  name="grid-4" id="<?php  echo $itmid; ?>" draggable="true"    class="list-group-item grid-col mb-3" data-item-grid="grid-4" style="margin-left:10px; margin-right:10px;" data-item-seq="0">
					<span class="row" >	
						<span id="<?php echo 'controls_'.$itmid; ?>" class="col-12 float-right item_icons item_icons_show" style="align:right;display:none;" align="right" >
							<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $itmid; ?>)" ><i class="bi bi-trash"></i></a>
						</span>
					</span>
					<span class="row" >
						<span class="col-4 dropzone" data-grid-position="0"></span>
						<span class="col-4 dropzone" data-grid-position="1"></span>
						<span class="col-4 dropzone" data-grid-position="2"></span>
					</span>
				</div>
			</span>
		</span>
    <!-- Grid 4 Ends Here -->

    <!-- Grid 3 Starts Here -->
		<span class="list-group-item grid-col mb-3" draggable="true" style="padding-right:0px" id="<?php $itmid = rand(1,99999); echo "iconItem_".$itmid; ?>" >

			<span class="d-block text-body-emphasis text-decoration-none " >
				<span class="d-block   text-center rounded icon-box">
					<img  draggable="false" src="images/grid-3.png">
				</span>
			</span>

			<span id="<?php echo 'actualItem_'.$itmid; ?>" style="display: none;">
				<div name="grid-3" id="<?php echo $itmid; ?>" draggable="true"    class="list-group-item grid-col mb-3" data-item-grid="grid-3" style="margin-left:10px; margin-right:10px;" data-item-seq="0" >
					<span class="row" >	
						<span id="<?php echo 'controls_'.$itmid; ?>" class="col-12 float-right item_icons item_icons_show" style="align:right;display:none;" align="right" >
							<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $itmid; ?>)" ><i class="bi bi-trash"></i></a>
						</span>
					</span>
					<span class="row" >
						<span class="col-3 dropzone" data-grid-position="0"></span>
						<span class="col-3 dropzone" data-grid-position="1"></span>
						<span class="col-3 dropzone" data-grid-position="2"></span>
						<span class="col-3 dropzone" data-grid-position="3"></span>
					</span>
				</div>
			</span>
		</span>


<!-- Old Grid With Out Image Starts Here -->
 <!-- All The Grids Are Commented -->
<!--    	<div name="grid-12" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"   class="list-group-item grid-col mb-3" style="margin-left:10px; margin-right:10px;" data-item-seq="0" data-item-grid="grid-12">
			<span class="row" >	
				<span id="<?php echo 'controls_'.$itmid; ?>" class="col-12 float-right item_icons item_icons_show" style="align:right;display:none;" align="right" >
					<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $itmid; ?>)" ><i class="bi bi-trash"></i></a>
				</span>
			</span>
			 <span class="row" >
				<span class="col-12 dropzone"  ></span>
			</span>
		</div>

		<div name="grid-6" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item grid-col pb-3"  data-item-grid="grid-6" style="margin-left:10px; margin-right:10px;" data-item-seq="0" >
			 <span class="row" >	
				<span id="<?php echo 'controls_'.$itmid; ?>" class="col-12 float-right item_icons item_icons_show" style="align:right;display:none;" align="right" >
					<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $itmid; ?>)" ><i class="bi bi-trash"></i></a>
				</span>
			</span>
			 <span class="row" >
				<span class="col-6 dropzone" data-grid-position="0"  ></span>
				<span class="col-6 dropzone" data-grid-position="1"></span>
			</span>
		</div>

		<div  name="grid-4" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item grid-col mb-3" data-item-grid="grid-4" style="margin-left:10px; margin-right:10px;" data-item-seq="0">
			 <span class="row" >	
				<span id="<?php echo 'controls_'.$itmid; ?>" class="col-12 float-right item_icons item_icons_show" style="align:right;display:none;" align="right" >
					<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $itmid; ?>)" ><i class="bi bi-trash"></i></a>
				</span>
			</span>
			 <span class="row" >
				<span class="col-4 dropzone" data-grid-position="0"></span>
				<span class="col-4 dropzone" data-grid-position="1"></span>
				<span class="col-4 dropzone" data-grid-position="2"></span>
			</span>
		</div>

		<div name="grid-3" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item grid-col mb-3" data-item-grid="grid-3" style="margin-left:10px; margin-right:10px;" data-item-seq="0" >
			<span class="row" >	
				<span id="<?php echo 'controls_'.$itmid; ?>" class="col-12 float-right item_icons item_icons_show" style="align:right;display:none;" align="right" >
					<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $itmid; ?>)" ><i class="bi bi-trash"></i></a>
				</span>
			</span>
			 <span class="row" >
				<span class="col-3 dropzone" data-grid-position="0"></span>
				<span class="col-3 dropzone" data-grid-position="1"></span>
				<span class="col-3 dropzone" data-grid-position="2"></span>
				<span class="col-3 dropzone" data-grid-position="3"></span>
			</span>
		</div> -->
<!-- Old Grid With Out Image Ends Here -->

  </div>    
</center>

			


			



			
			
			
<div class="accordion" id="accordionExample">
<div class="accordion-item">
    <h2 class="accordion-header" id="headingFive">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="true" aria-controls="collapseFive">
       Headings
      </button>
    </h2>
    <div id="collapseFive" class="accordion-collapse collapse" aria-labelledby="headingFive" data-bs-parent="#accordionExample">
      <div class="accordion-body">
      			
				
			<!-- 	<p name="column_heading" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item child-item"  data-item-seq="0" >
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
				</p> -->






     			<span class=" col-6 child-item" draggable="true" style="padding-right:0px" id="<?php $itmid = rand(1,99999); echo "iconItem_".$itmid; ?>" >
     				
	       		<span class="d-block text-body-emphasis text-decoration-none " >
		          <span class="d-block   text-center rounded icon-box">
		            <img  draggable="false" src="images/column_heading.png">
		          </span>
        		</span>

        		<span id="<?php echo 'actualItem_'.$itmid; ?>" style="display: none;">
        					<div name="column_heading" id="<?php  echo $itmid; ?>" draggable="true"    class="list-group-item child-item mb-3"  data-item-seq="0" >
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
									</div>
        		</span>
     			</span>


      </div>
    </div>
  </div>





















  <div class="accordion-item">
    <h2 class="accordion-header" id="headingTwo">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
        Input Fields
      </button>
    </h2>
    <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
      <div class="accordion-body">










				<span class=" col-6  child-item" draggable="true" style="padding-right:0px" id="<?php $itmid = rand(1,99999); echo "iconItem_".$itmid; ?>" >
	       		<span class="d-block text-body-emphasis text-decoration-none " >
		          <span class="d-block   text-center rounded icon-box">
		            <img  draggable="false" src="images/text_input.png">
		          </span>
        		</span>

        		<span id="<?php echo 'actualItem_'.$itmid; ?>" style="display: none;">
        				<div name="text_input"  id="<?php  echo $itmid; ?>" draggable="true"    class="list-group-item child-item mb-3" data-item-seq="0">
									<span class="row">
										<span class="col-9 float-left" id="<?php echo 'label_'.$itmid; ?>" >
											<label>Text Input</label>
										</span>
										<span class="col-3 float-right item_icons item_icons_show" style="align:right;display:none;" align="right" >
											<a style="cursor:pointer;color:blue;"  onClick="showattribs('text_input', <?php echo $itmid; ?>)" ><i class="bi bi-gear"></i></a>	
											<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $itmid; ?>)" ><i class="bi bi-trash"></i></a>
										</span>
									</span>
									<span class="row">
										<span class="col-12" id="<?php echo 'input_'.$itmid; ?>">
											<input type="text" class="form-control" />
										</span>
									</span>
								
							</div>
        		</span>
     			</span>






						<!-- 	<p name="text_input"  id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item child-item" data-item-seq="0">
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
								
							</p> -->



        	
			
			<div name="number_input" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item child-item mb-3" data-item-seq="0">
				
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
				
			</div>
			
			<div name="date_input" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item child-item mb-3" data-item-seq="0" >
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
			</div>
			
			<div name="password_input" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item child-item mb-3" data-item-seq="0" >
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
			</div>
			
			<div name="email_input" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item child-item mb-3" data-item-seq="0">
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
			</div>
			
			<div name="url_input" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item child-item mb-3" data-item-seq="0">
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
			</div>
			
			<div name="display_input" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item child-item mb-3" data-item-seq="0">
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
			</div>
			
			<div name="nondb_input" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item child-item mb-3" data-item-seq="0">
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
			</div>
			
			<div name="text_area" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item child-item mb-3" data-item-seq="0">
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
			</div>
			
			<div name="drop_down" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item child-item mb-3" data-item-seq="0" >
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
			</div>
			
			<div name="multi_choice" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item child-item mb-3" data-item-seq="0">
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
			</div>



			<div name="check_box" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item child-item mb-3" data-item-seq="0" >
				<span class="row">
					<span class="col-9 float-left" id="<?php echo 'label_'.$itmid; ?>" >
						<label><input type="checkbox" /> Check Box</label>
					</span>
					<span id="<?php echo 'controls_'.$itmid; ?>" class="col-3 float-right item_icons item_icons_show" style="align:right;display:none;" align="right" >
						<a style="cursor:pointer;color:blue;"  onClick="showattribs('check_box', <?php echo $itmid; ?>)" ><i class="bi bi-gear"></i></a>	
						<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $itmid; ?>)" ><i class="bi bi-trash"></i></a>
					</span>
				</span>
			</div>
			
			<div name="radio_button" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item child-item mb-3" data-item-seq="0">
				<span class="row">
					<span class="col-9 float-left" id="<?php echo 'label_'.$itmid; ?>" >
						<label><input type="radio"  /> Radio Button</label>
					</span>
					
					<span id="<?php echo 'controls_'.$itmid; ?>" class="col-3 float-right item_icons item_icons_show" style="align:right;display:none;" align="right" >
						<a style="cursor:pointer;color:blue;"  onClick="showattribs('radio_button', <?php echo $itmid; ?>)" ><i class="bi bi-gear"></i></a>	
						<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $itmid; ?>)" ><i class="bi bi-trash"></i></a>
					</span>
				</span>
			</div>


			<div name="referenced_data" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item child-item mb-3" data-item-seq="0" >
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
			</div>
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingThree">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
        File Input
      </button>
    </h2>
    <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
      <div class="accordion-body">
        <div name="single_file" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item child-item mb-3" data-item-seq="0">
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
			</div>
			
			<div name="multiple_files" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item child-item mb-3" data-item-seq="0" >
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
			</div>
			
			<div name="single_image" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item child-item mb-3" data-item-seq="0">
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
			</div>
			
			<div name="multiple_images" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item child-item mb-3" data-item-seq="0">
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
			</div>
			
      </div>
    </div>
  </div>






  <div class="accordion-item">
    <h2 class="accordion-header" id="headingFour">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
        Text Editor
      </button>
    </h2>
    <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#accordionExample">
      <div class="accordion-body">
        <div name="rich_text_editor" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"  class="child-item mb-3"  data-item-seq="0">
				
					<span class="row">
						<span class="col-12 float-left" id="<?php echo 'label_'.$itmid; ?>" >
							<label style="background-color:white;font-size:18px">Rich Text Editor</label>
						</span>
						<span id="<?php echo 'controls_'.$itmid; ?>" class="col-12 float-right item_icons item_icons_show" style="align:right;display:none" align="right" >
							<a style="cursor:pointer;color:blue;"  onClick="showattribs('rich_text_editor', <?php echo $itmid; ?>)" ><i class="bi bi-gear"></i></a>	
							<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $itmid; ?>)" ><i class="bi bi-trash"></i></a>
						</span>
					</span>
					<span class="row">
						<span class="col-12" id="<?php echo 'input_'.$itmid; ?>" >
							<textarea id="<?php echo 'rich_text_editor_'.$itmid; ?>" class="form-control" ></textarea>
							<script> new nicEditor({iconsPath : 'images/nicEditorIcons.gif',maxHeight : 100}).panelInstance('<?php echo "rich_text_editor_".$itmid; ?>'); 
						$('.nicEdit-panelContain').parent().width('98%');
						$('.nicEdit-panelContain').parent().next().width('96%');
						$('.nicEdit-main').width('98%');</script>
						</span>
					</span>
				
			</div>
			
			
			
      </div>
    </div>
  </div>










 <div class="accordion-item">
    <h2 class="accordion-header" id="headingSix">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
        Sub Modules
      </button>
    </h2>
    <div id="collapseSix" class="accordion-collapse collapse" aria-labelledby="headingSix" data-bs-parent="#accordionExample">
      <div class="accordion-body">
        	<div name="submodule" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"    class="list-group-item child-item mb-3" data-item-seq="0" style="margin-left:10px;margin-right:10px;" >
				
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
				
			</div>
			
			
			
			
      </div>
    </div>
  </div>






  <div class="accordion-item">
    <h2 class="accordion-header" id="headingSeven">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
       Incremental Tabs
      </button>
    </h2>
    <div id="collapseSeven" class="accordion-collapse collapse" aria-labelledby="headingSeven" data-bs-parent="#accordionExample">
      <div class="accordion-body">
        <div name="Incremental_tabs" id="<?php $itmid = rand(1,99999); echo $itmid; ?>" draggable="true"  class="child-item mb-3"  data-item-seq="0">
				
					<span class="row" style="display: none;">
						<span class="col-12 float-left" id="<?php echo 'label_'.$itmid; ?>" >
							<label style="background-color:white;font-size:18px">Tabs</label>
						</span>
						<span  class="col-12 float-right item_icons item_icons_show" style="align:right;display:none" align="right" >
							<a style="cursor:pointer;color:blue;"  onClick="showattribs('Incremental_tabs', <?php echo $itmid; ?>)" ><i class="bi bi-gear"></i></a>	
							<a style="cursor:pointer;color:red;" onClick="remove_item(<?php echo $itmid; ?>)" ><i class="bi bi-trash"></i></a>
						</span>
					</span>
					<span class="row">
						<span class="col-12" id="<?php echo 'input_'.$itmid; ?>" >
								<span id="<?php echo 'tabsContainer_'.$itmid; ?>" >
							    <span class="nav nav-tabs" id="myTabs">
							      <span class="nav-item" role="presentation">
							      	<a class="nav-link active" href="#sampleTab" id="sampleTab" data-bs-toggle="tab" aria-selected="true" role="tab"><span>Tab 1</span> 
							      </a>
							      </span>
							      <span class="nav-item">
							        <a id="<?php echo 'addTabBtn_'.$itmid; ?>" class="nav-link btn btn-primary"  data-bs-toggle="tab" aria-selected="true" role="tab">+</a>
							      </span>
							    </span>
							  </span>

							  <span class="<?php echo 'tab-content_'.$itmid; ?>  tab-content mt-3" >
							  <span class="tab-pane fade active show" id="sampleTab" data-tab-number="tab1" role="tabpanel" aria-labelledby="#sampleTab"><span class=" list-group tab-parent mt-3"> </span></span>
							  		
							  	</span>
							 </span>
	
						</span>

				
				<script type="text/javascript">
	(function() {
  const tabsContainer = document.getElementById('tabsContainer_<?php echo $itmid; ?>');
  const addTabBtn = document.getElementById('addTabBtn_<?php echo $itmid; ?>');
  var mytarget;
  let tabCounter = 1;

  addTabBtn.addEventListener('click', () => {
    const newTab = document.createElement('span');
    newTab.classList.add('nav-item');

    const newTabLink = document.createElement('a');
    newTabLink.classList.add('nav-link');
    newTabLink.href = `#tab${tabCounter}_<?php echo $itmid; ?>`;
    newTabLink.id = 'tablink' + tabCounter +'_<?php echo $itmid; ?>';
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
    tabPane.id = `tab${tabCounter}_<?php echo $itmid; ?>`;
    tabPane.setAttribute('data-tab-number', `tab${tabCounter}`);
    tabPane.innerHTML = `<span  class="dropzone list-group tab-parent mt-3"  > </span>`;

    tabsContainer.parentElement.querySelector('.tab-content_<?php echo $itmid; ?>').appendChild(tabPane);

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
    controlsSpan.id = `controls_${tabCounter}_<?php echo $itmid; ?>`;
    controlsSpan.className = 'col-12 float-right item_icons item_icons_show';
    controlsSpan.style.cssText = 'font-size:12px; margin-left:30px';

    controlsSpan.innerHTML = `
      <a style="cursor:pointer;color:blue;" onClick="showattribs('tab_link', 'tablink${tabCounter}_<?php echo $itmid; ?>')"><i class="bi bi-gear"></i></a>
      <a style="cursor:pointer;color:red;" onClick="remove_tab_item('${tabCounter}_<?php echo $itmid; ?>')"><i class="bi bi-trash"></i></a>
    `;
    newTabLink.appendChild(controlsSpan);
    newTabLink.addEventListener('show.bs.tab', () => {
    controlsSpan.style.display = 'inline';
});

newTabLink.addEventListener('hide.bs.tab', () => {
  controlsSpan.style.display = 'none';
});


    tabCounter++;
  });





  tabsContainer.addEventListener('show.bs.tab', (event) => {
    const targetTabLink = event.target;
    const controlsSpan = targetTabLink.querySelector(`#controls_${tabCounter}_<?php echo $itmid; ?>`);
    controlsSpan.style.display = 'inline';
  });
    tabsContainer.addEventListener('hide.bs.tab', (event) => {
    const targetTabLink = event.target;
    const controlsSpan = targetTabLink.querySelector(`#controls_${tabCounter}_<?php echo $itmid; ?>`);
    controlsSpan.style.display = 'none';
  });

  document.addEventListener('DOMContentLoaded', () => {
    const myTabs = new bootstrap.Tab(tabsContainer);
    myTabs.show();
    addTabBtn.style.display = 'inline-block';
  });
})();

	</script>
			</div>
			
			
			
      </div>
    </div>
  </div>














</div>

          
           
			
			
			
			
			
		
				
				
				
			
			
			
		
			
			
			
			
			
				
			
			
			
			
			
			
			
		








