let dragged;
let vsidepanel;

function getDragAfterElement(container, y) {
  const draggableElements = [...container.querySelectorAll('.list-group-item:not(.dragging)')];

  return draggableElements.reduce((closest, child) => {
    const box = child.getBoundingClientRect();
    const offset = y - box.top - box.height / 2;

    if (offset < 0 && offset > closest.offset) {
      return { offset: offset, element: child };
    } else {
      return closest;
    }
  }, { offset: Number.NEGATIVE_INFINITY }).element;
}


function updateSpacing(){
	if (event.target.classList.contains("dropzone")) {
    if(event.target.getElementsByClassName("list-group-item").length > 0){
	   const afterElement = getDragAfterElement(event.target, event.clientY);
		  if (afterElement != null) 
		  {
		    $("#"+afterElement.id+"").addClass("myPlaceholder");
		  } 
    } 
	}
}
/* events fired on the draggable target */
document.addEventListener("drag", event => {
  //console.log("dragging");
});

document.addEventListener("dragstart", event => {
	// vsidepanel = document.getElementById('sidepanel').innerHTML;
  // store a ref. on the dragged elem
  event.dataTransfer.effectAllowed = "move";
  dragged = event.target;   
  // make it half transparent
  event.target.classList.add("dragging");

});
 
document.addEventListener("dragend", event => {
  // reset the transparency
  event.target.classList.remove("dragging");
 
  
});

/* events fired on the drop targets */
document.addEventListener("dragover", event => {
  // prevent default to allow drop
   updateSpacing();
   assignGridSequence();
  event.preventDefault();
}, false);

document.addEventListener("dragenter", event => {
  // highlight potential drop target when the draggable element enters it
  if (event.target.classList.contains("dropzone")) {
     event.target.classList.add("dragover");

  }

});

document.addEventListener("dragleave", event => {
  // reset background of potential drop target when the draggable element leaves it
  if (event.target.classList.contains("dropzone")) {
    event.target.classList.remove("dragover");
  }
});

document.addEventListener("drop", event => {
  // prevent default action (open as link for some elements)
  event.preventDefault();
   var placeholderCheck= document.getElementsByClassName("myPlaceholder");
   if(placeholderCheck.length > 0){
			   for (var i = 0; i < placeholderCheck.length; i++) {
			    placeholderCheck[i].classList.remove("myPlaceholder");
			  }
   }
  	const afterElement = getDragAfterElement(event.target, event.clientY);
		const draggableItem = document.querySelector('.dragging');
  // move dragged element to the selected drop target
  if (event.target.classList.contains("dropzone")) {
    //event.target.classList.remove("dragover");
    //dragged.parentNode.removeChild(dragged);
    
    // this wil put the grid-col in the frame
  if (event.target.classList.contains("content-parent") && dragged.classList.contains("grid-col"))
  {
  
    		  if (afterElement == null) {
				      event.target.appendChild(draggableItem);
				  } 
				  else {

				  	 
				  		event.target.insertBefore(draggableItem, afterElement);
              const grabAfterElement = $("#"+afterElement.id+"");
        			      

		 					}
					     assignGridSequence();		
					     get_item(dragged);
						   show_controls(dragged);
   
  }
  //this will put the item in grid-col
else if (event.target.parentNode.parentNode.classList.contains("grid-col") && dragged.classList.contains("child-item")){
     
      if (afterElement == null) {
				      event.target.appendChild(draggableItem);
				  } 
				  else {

				  	 
				  		event.target.insertBefore(draggableItem, afterElement);
              const grabAfterElement = $("#"+afterElement.id+"");
            
				      

		 					}
     get_item(dragged);
	   show_controls(dragged);
	   assignItemSequence();
	   //showattribs(dragged.getAttribute('name'),dragged.id);


    }

   if (event.target.classList.contains("content-parent") && !dragged.classList.contains("grid-col")){

     alert("You need to add a Grid Column First");
   
   }


	// const parent = $('.content-parent');
	// // Get the number of child elements
  // const draggedId=dragged.id;
	// const childIndex = parent.children().index($('#'+draggedId+''));
	//console.log(childIndex);
	//alert('you are here .. 0');
	 
	//handleDrop(event);
   
	//event.target.appendChild(itm)
	//console.log(dragged.id);
	//console.log(event.target.id);
  }
  
 
  
});





function get_item(item){
	//alert('item id: '+item.id+' , item name: '+item.name+' , item type: '+item.type);
	       
        $.ajax({
            type: 'GET',
            data: {
                
            },
            url: 'sidepanel.php',
            success: function(result) {
                //ret_max_bid = result;
                ///console.log('ret_max_bid: '+ret_max_bid);
                //localStorage.setItem(recid, ret_max_bid);
                 $('#sidepanel').html(result);
                //$('#hfields_list').html(result);
                //alert('new list: '+result);
            }
        });
		
	//document.getElementById("sidepanel").innerHTML.reload;
	//console.log(document.getElementById('sortablelist').innerHTML);
}

function show_controls(dropedItem){
	//alert(dropedItem.id);
	document.getElementById('controls_'+dropedItem.id).style.display='block';
}

 function handleDrop(e) {
	 //console.log('handleDrop: ');
	 //console.log(e);
	 //e.innerHTML = '<input type="text" />';
    // if (e.stopPropagation) {
      // e.stopPropagation(); // stops the browser from redirecting.
    // }

  	
    return false;
  }
  
  
  function remove_item(itmid){
	  //alert('you are here .. 1: '+itmid);
	  //console.log(itmid);
	  if(confirm("Are you sure !")){
		  var vmodule_name = document.getElementById('module_name').value;
		  $.ajax({
				url: "ajax_removeitem.php",
				type : "POST",
				cache : false,
				data : {item_id: itmid,
						module_name: vmodule_name
				},
				success: function(response)  {
					//alert(response);
					var result = $.trim(response);
					if(result==="success"){
					  $("#"+itmid).remove();
					}
				}
			})
			
	  }
	  
  }
  
  function showattribs(itemtype, divid){
			var datastring;
			datastring = "itemtype="+itemtype+"&divid="+divid;
			//alert(datastring);			
			$.ajax({    //create an ajax request to load_page.php
				type: "POST",
				data : datastring,
				url: "ajax_item_properties.php",             
				dataType: "html",   //expect html to be returned                
				cache : false,
				success: function(response){                    
					$("#contentdiv").html(response); 
					//alert(response);
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
						 'href': '#contentdiv'
					});
					
					//alert(response);
				}
			});
		}


		
			
			function assignGridSequence(){
				if ( dragged.classList.contains("grid-col"))
      {
					const parent = $('.content-parent');
		     //NOTE : make sure that dragged.id is not empty
				  const childIndex = parent.children().index($('#'+dragged.id+''));
				  dragged.setAttribute('data-item-seq',childIndex);
				  const element = $('#'+dragged.id+''); // Replace 'elementId' with the actual ID or selector of the target element
		      element.siblings().each(function() {
				  const siblingElement = $(this);
				  const siblingId = siblingElement.attr('id');
				  const childIndex = parent.children().index($('#' + siblingId));
				  siblingElement.attr('data-item-seq', childIndex);
		  
		  		});
      }
			
			}
			function assignItemSequence(){

					const parent =dragged.parentNode.parentNode.previousElementSibling.parentElement;
		      const parentGridType=parent.getAttribute('data-item-grid');
		      const parentGridSequence=parent.getAttribute('data-item-seq');
		      var dataItemSequence="("+parentGridType+")-"+parentGridSequence;
		      const itemChildID=$("#"+parent.id+"").find("#"+dragged.id+"").index();
		       dataItemSequence= dataItemSequence +"-"+ itemChildID;
		       dragged.setAttribute('data-item-seq',dataItemSequence);

		      const element = $('#'+dragged.id+''); // Replace 'elementId' with the actual ID or selector of the target element
		      element.siblings().each(function() {
				  const siblingElement = $(this);
				  const siblingId = siblingElement.attr('id');
				  const itemChildID=$("#"+parent.id+"").find("#"+siblingId+"").index();
		      dataItemSequence= "("+parentGridType+")-"+parentGridSequence +"-"+ itemChildID;
		      siblingElement.attr('data-item-seq',dataItemSequence);

		  		});


			}