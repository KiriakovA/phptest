$(document).ready(function(){
var login = $('#auth').attr('data-login');
var pass = $('#auth').attr('data-pass');
var admin = $('#auth').attr('data-admin');
if(login && pass && admin){
		$('#auth').text('Sign Out').attr('href',"index.php?c=page&act=logout");
		$('#auth').removeClass('signin').addClass('signout');
		$('.cart_li').before($('<li><a class="room" href="index.php?c=admin&act=AdminPage">Admin Panel</a></li>'));
	}else if (login && pass){
		$('#auth').text('Sign Out').attr('href',"index.php?c=page&act=logout");
		$('#auth').removeClass('signin').addClass('signout');
		$('.cart_li').before($('<li><a class="room" href="index.php?c=page&act=persArea">User Page</a></li>'));	
	}
});