
$(window).load(function(){ 
            // slideshow top
			$('#slidetop').slides({				
				preload: true,
				preloadImage: 'images/loading.gif',
				play: 5000,
				pause: 2500,
				hoverPause: true,
				effect: 'fade',			
			});
               // fancybox
             $('.support-address-mar').find('a').fancybox({
                 width: 500,
                 height: 500,
                 type: 'iframe'
               });

            // gallery
            $("#gallery").simplecarousel({
                width:170,
                height:190,
                visible: 4,
                auto: 5000,
                next: $('#gallery-next'),
                prev: $('#gallery-prev')
            });
			
			   // gallery1
            $("#gallery1").simplecarousel({
                width:169,
                height:210,
                visible: 2,
				vertical: true,
                auto: 5000,
               next: false,
               prev: false
            });
            

     	$('.jqzoom').jqzoom({
            zoomType: 'reverse',
            lens:true,
            preloadImages: true,
            alwaysOn:false
        });
	
});


function showdiv(id){
document.getElementById(id).style.display = "block";
}


