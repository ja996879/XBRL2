// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require highcharts
//= require highcharts/highcharts-more

$(document).ready(function(){
	  clock=setInterval(moveTitle,2000);
	  var i=1;
	  var wi=0;   
	  var si=570; 
	 function moveTitle(){ 
	 
	 if(i<=3){
	 
          $("#banner img").animate({left:wi+'px'},1000);
		  if(i<3){
		  wi-=570;
		   }
		  }
		  else if(i<=4){
		  wi+=570;
		  $("#banner img").animate({left:wi+'px'},1000);
		  }
		    //
		  else if(i==5){
		  wi+=570;
		  $("#banner img").animate({left:wi+'px'},1000);
		  i=0;
		  }
		  i+=1;
		}
		  
		
      });
