$(document).ready(function() {
	
	$('.overlay').click(function(event) {
        if ($(event.target).is('.overlay'))
            $(this).fadeOut()
	})

	$('.edit_user input').click(function() {
		$('.edit_user').submit()
	})
	
	$('.nit').click(function() {
		$('div#account-wrapper').fadeToggle()
	})
	
})

function login() {
	$('#facebook').fadeIn()
}