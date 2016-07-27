$(document).ready(function(){
	if(window.location.pathname.search('/') != -1){
		var location = window.location.pathname.split('/')[1]
		if(location == 'family'){
			$('#about').mouseenter(function(){
				$(this).addClass('green');
				$(this).find('p').css('color','rgba(255,255,255,1)');
				$(this).find('h3').css('color','rgba(255,255,255,1)');
			}).mouseleave(function(){
				$(this).removeClass('green');
				$(this).find('p').css('color','rgba(110,110,110,1)');
				$(this).find('h3').css('color','rgba(110,110,110,1)');
			});
			$('#staff, #services').mouseenter(function(){
				$(this).addClass('green');
				$(this).find('p').css('color','rgba(255,255,255,1)');
			}).mouseleave(function(){
				$(this).removeClass('green');
				$(this).find('p').css('color','rgba(110,110,110,1)');
			});
			$('#articles').mouseenter(function(){
				$(this).addClass('yellow');
				$(this).find('p').css('color','rgba(255,255,255,1)');
				$(this).find('h3').css('color','rgba(255,255,255,1)');
			}).mouseleave(function(){
				$(this).removeClass('yellow');
				$(this).find('p').css('color','rgba(110,110,110,1)');
				$(this).find('h3').css('color','rgba(110,110,110,1)');
			});
			$('header button').mouseenter(function(){
				$(this).removeClass('yellow');
			}).mouseleave(function(){
				$(this).addClass('yellow');
			});
		}
		else if(location == 'baby'){
			$('#about').mouseenter(function(){
				$(this).addClass('blue');
				$(this).find('p').css('color','rgba(255,255,255,1)');
				$(this).find('h3').css('color','rgba(255,255,255,1)');
			}).mouseleave(function(){
				$(this).removeClass('blue');
				$(this).find('p').css('color','rgba(110,110,110,1)');
				$(this).find('h3').css('color','rgba(110,110,110,1)');
			});
			$('#staff, #services').mouseenter(function(){
				$(this).addClass('blue');
				$(this).find('p').css('color','rgba(255,255,255,1)');
			}).mouseleave(function(){
				$(this).removeClass('blue');
				$(this).find('p').css('color','rgba(110,110,110,1)');
			});
			$('#articles').mouseenter(function(){
				$(this).addClass('red');
				$(this).find('p').css('color','rgba(255,255,255,1)');
				$(this).find('h3').css('color','rgba(255,255,255,1)');
			}).mouseleave(function(){
				$(this).removeClass('red');
				$(this).find('p').css('color','rgba(110,110,110,1)');
				$(this).find('h3').css('color','rgba(110,110,110,1)');
			});
			$('header button').mouseenter(function(){
				$(this).removeClass('red');
			}).mouseleave(function(){
				$(this).addClass('red');
			});
		}
	}
});