function bindSubmit(){
	$('.roles_form').on('submit', function(event){
		event.preventDefault();
		var data = $(this).serialize();
		$.ajax({
			method: "POST",
			url: "/roles",
			data: data,
			success: function(data, textStatus, jqXHR){
				window.reload();
			}
		});
	});
}

$(document).ready(function(){
	bindSubmit();
});