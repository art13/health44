$(document).ready(function(){
	$('.part1').mouseenter(function(){
		$(this).addClass('blue');
	}).mouseleave(function(){
		$(this).removeClass('blue');
	});
	$('.part2').mouseenter(function(){
		$(this).addClass('yellow');
	}).mouseleave(function(){
		$(this).removeClass('yellow');
	});
});