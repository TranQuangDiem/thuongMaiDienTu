/**
 *
 */

$(document).ready(function() {
	var serializeForm = function(form) {
		var obj = {};
		var formData = new FormData(form);
		for (var key of formData.keys()) {
			obj[key] = formData.get(key);
		}
		return obj;
	};
	$("#form-login").submit(function(e) {
		e.preventDefault();
		$.ajax({
			type: "POST",
			url: $("#form-login").attr('action'),
			data: $('#form-login').serialize(),
			success: function(res) {
				
			},
		});
	});
	$("#form-register").submit(function(e) {
		e.preventDefault();
		$.ajax({
			type: "POST",
			url: $("#form-register").attr('action'),
			data: $('#form-register').serialize(),
			success: function(res) {
				alert(res);
			},
		});
	});
});
