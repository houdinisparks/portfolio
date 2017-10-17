$(document).ready(function() {
	$('.content > div').masonry({
		itemSelector : '.project-item',
		originLeft : false,
		percentPosition : true,
		columnWidth : ".project-item",
		gutter : 15
	});
	
//	$("#modalDesc").dialog({
//		autoOpen: false
//	});
	
	// #modal-body replacement handler
	// ajax call to controller to replace modal-body.html()
	$(".js-button").click(function() {
		console.log(this);
		var projTitle = $(this).parent().siblings(".proj-title").html();
		$("#proj-title").html(projTitle);
		var projId = $(this).closest(".project-item").attr("id");
		
		//ajax call
	    $.ajax({
	        url : 'myprojects/proj',
	        data:{id:projId},
	        type: 'GET',
	        success: function(data){
	            $('#modalDesc .modal-body').html(data);
	            $('#modalDesc').modal("show");
	        }
	    });
		
	});
});

