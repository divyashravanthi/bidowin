$(document).ready(function() {
  	$('#demo').pinterest_grid({
	    no_columns: 4,
	    padding_x: 10,
	    padding_y: 10,
	    margin_bottom: 50,
	    single_column_breakpoint: 700
  	});
  	$(".post-btn").click(function(){
		$("#myModal").modal('show');
	});
});
