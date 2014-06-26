	

/*== Asynchronous Loading Google Maps ==============================*/

function loadScript() {
  var script = document.createElement('script');
  script.type = 'text/javascript';
  script.src = 'https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&' +
      'callback=initialize';
  document.body.appendChild(script);
}
window.onload = loadScript;

/*-----------------------------------------------------------------*/




$(document).ready(function() {  /*-- initiation document ready --*/
   prompt("너 이거 보이냐");	
/*== Submit Contact Form ==========================================*/  	
	
	//if submit button is clicked
	$('#submit_contact_form').click(function () {

		if($("#form-contact").valid()) {
			
	 //Get the data from all the fields
		var name = $("#name").val();
		var email = $("#email").val();
		var comment = $("#comment").val();

	  //organize the data properly
		var data = 'name=' + name+ '&email=' + email+ '&comment='  + encodeURIComponent(comment);		
				
		//show the loading sign
		$('.load-form').toggle();
		
		//disable button submit
		$('#submit_contact_form:submit').attr("disabled", true);
		
		$('.success').hide();
		
		//start the ajax
		$.ajax({
			//this is the php file that processes the data and send mail
			url: "php/process_contact_form.php",	
			
			//GET method is used
			type: "POST",

			//pass the data			
			data: data,		
			
			//Do not cache the page
			cache: false,
			
			//success
			success: function (html) {				
				//if process.php returned 1/true (send mail success)			
					//disabled all the text fields
										
					$('.load-form').toggle();
					$('#form-contact')[0].reset();
					$('.success').toggle('slow');
					$('#submit_contact_form:submit').attr("disabled", false);
			}		
		});
		
		//cancel the submit button default behaviours
		return false;
		}
	});
	
/*-----------------------------------------------------------------*/
	
		
	
/*== Submit subscribe Form ========================================*/    

	//if submit button is clicked
	$('#submit_subscribe').click(function () {		
		if($("#form-subscribe").valid()) {
		
		
		//Get the data from all the fields		
		var email = $("#email-subscribe").val();
		
		var data = '&email=' + email;
		
		//show the loading sign
		$('.subscribe_loading').toggle("slow");
		
		//start the ajax
		$.ajax({
			//this is the php file that processes the data subscribe input
			/*
			 * Select if you prefer to store the list of mails.
			 * 1-Send your email address
			   2-Save in TXT file
			   3-Save in database
			   4-Send to a MailChimp list

			 */
			
		     /*url: "php/subscribed_EMAIL.php",*/
		     /*url: "php/subscribed_TXT.php",*/			
			 /*url: "php/subscribed_BD.php",*/
			   url: "php/subscribed_mailchimp.php",
			
			//GET method is used
			type: "POST",

			//pass the data			
			data: data,		
			
			//Do not cache the page
			cache: false,
			
			//success
			success: function (html) {
		
				 $('.subscribe-box').animate({opacity:".0"}, 100);
				 $('.subscribe-box').toggle("slow");
				$('.subscribe_message').delay(500).toggle("slow");
				         			
			}		
		});
		
		//cancel the submit button default behaviours
		return false;
		}
	});	

/*-----------------------------------------------------------------*/


	
/*== animation effects ============================================*/
	
		$('section.service').waypoint(function(direction) {			
			$('#feature1').delay(0).animate({'opacity':'1'}, 100,'easeInOutSine');
			$('#feature2').delay(400).animate({'opacity':'1'}, 100,'easeInOutSine');
			$('#feature3').delay(800).animate({'opacity':'1'}, 100,'easeInOutSine');
		}, { offset: '110%',
			 triggerOnce: true});
		
		
		$('section.contact').waypoint(function(direction) {				
			$('.info').delay(0).animate({'opacity':'1'}, 100,'easeInOutSine');
			$('.form-contact').delay(400).animate({'opacity':'1'}, 100,'easeInOutSine');
		}, { offset: '70%',
			 triggerOnce: true});	
		
/*-----------------------------------------------------------------*/		
});/*-- close document ready --*/



/*== validation run forms =========================================*/

$( function() {
	$('form').each(function () {
	    $(this).validate();
	}); 

/*-----------------------------------------------------------------*/	
	


	
	
/*== page scroller plugin settings ================================*/
	$('body').pageScroller({
		HTML5mode: true,
		scrollOffset: -20,
		navigation: '#navi3'
	});
/*-----------------------------------------------------------------*/

	
/*== Count Down settings ==========================================*/
 /*
  * The date is set determines the countdown, date you want.
  */	
	 $('#clock').countdown("2014/8/11", function(event) {
		    var $this = $(this);
		    switch(event.type) {
		      case "seconds":
		      case "minutes":
		      case "hours":
		      case "days":
		      case "daysLeft":
		      $this.find('span#'+event.type).html(event.value);
		        break;
		      case "finished":
		        $this.hide();
		        break;
		    }
		  });
	});

/*-----------------------------------------------------------------*/

/*== scroll Top =========================================*/
$('#prev').click(function () {
	$('body,html').animate({
		scrollTop: 0
	}, 800);
	return false;
});

/*---------------------------------------------------------------


