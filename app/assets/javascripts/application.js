// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .
$(document).ready(function(){
	var path = window.location.pathname;
	$('.carousel').carousel({
	  interval: 2000
	});
	$("nav li a[href='" + path + "']").css('color','rgba(255,0,0,1)');
	
	$('.nav-pills li a').mouseenter(function(){
		$(this).css('color','rgba(255,0,0,1)');
		$(this).css('background','none');
	}).mouseleave(function(){
		$(this).css('color','rgba(51,51,51,1)');
		$(this).css('background','none');
		$("nav li a[href='" + path + "']").css('color','rgba(255,0,0,1)');
	});

	$('.feedback').mouseenter(function(){
		$(this).find('button').css('border','2px solid rgba(66,66,66,1)');
	}).mouseleave(function(){
		$(this).find('button').css('border','2px solid rgba(255,255,255,1)');
	});
});