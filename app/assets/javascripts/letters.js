var submitForm = function() {
	var form = $('#letterForm form');
	$.post(form.attr('action'),form.serialize());
};
$(document).ready(function(){
	$('#letterForm').on('hidden', function () {
		$('#letterForm input, #letterForm textarea').not('input[type=submit]').val('');
		$('#message').empty();
	});
});
