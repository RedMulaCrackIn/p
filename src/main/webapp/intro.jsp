<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="vieport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Geek Factory Project</title>
	<link rel="stylesheet" href="./css/intro-style.css">
	<link rel="icon" href="./img/icon.png">
	


<script src="https://code.jquery.com/jquery-3.2.1.js"type="text/javascript">
$(function() {

//set up hash detection 
$(window).bind( 'hashchange', function(e) {
 var hash = '';
 var hashlenght = 0;
 hashwith = '';
 if (location.hash == ''){
 location.hash = '#pages=index';
 document.title = 'Work Index';
 }

 hash = location.hash;
 hashlenght = hash.length;
 hashwith = '#'+hash.substring(7, hashlenght);
 hash = location.hash.substring(7, hashlenght);
 if(hashwith != "#"+'index'){
 show_overlay(hash);
 document.title = 'Work '+hash;
 }
 else{
 close_overlay();
 
 }
 
 });

 $(window).trigger( 'hashchange' );

 $(".overlays .item img").each(function(){
 $(this).click(function(){
 close_overlay();
 });
 });

});

function close_overlay(){
 $(".overlays .item").each(function(){
 if($(this).css('display') == 'block'){$(this).hide();}
 });
 location.hash = '#pages=index';
}

//function to show overlay
function show_overlay(aux){
 $("#"+aux).show();
}

//function to change hash
function change_hash(aux){
 location.hash = '#pages='+aux;
 document.title = 'Work '+aux;
}

</script>


</head>
<body>

	<div class="welcome-section content-hidden">
		<div class="content-wrap">
		
			<ul class="fly-in-text">
			
			<li>&lt</li>
			<li>G</li>
			<li>E</li>
			<li>E</li>
			<li>K</li>
			<li>&nbsp</li>
			<li>F</li>
			<li>A</li>
			<li>C</li>
			<li>T</li>
			<li>O</li>
			<li>R</li>
			<li>Y</li>
			<li>/&gt</li>
			
			</ul>
			
			<a href="index.jsp" class="enter-button">ESPLORA</a>
			
		</div>
	</div>

<script type="text/javascript">

$(function() {
	var welcomeSection = $('.welcome-section'),
						enterButton = welcomeSection.find('.enter-button');
						
		setTimeout(function() {
				welcomeSection.removeClass('content-hidden');
		},800);
		
		

});

</script>

</body>
</html>