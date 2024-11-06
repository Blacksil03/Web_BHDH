<body>
    
	<div id='wrapper'>
		
		<div >
		
			<div id="bigPic">
				<img src="images/Thum1.png" alt="" />
				<img src="images/Thum2.png" alt="" />
				<img src="images/Thum3.png" alt="" />
				<img src="images/Thum4.png" alt="" />
				<img src="images/Thum5.png" alt="" />
				<img src="images/Thum6.png" alt="" />
				


			</div>
			
			
			<ul id="thumbs">
				<li class='active' rel='1'><img src="images/DH1.jpg" alt="" /></li>
				<li rel='2'><img src="images/DH2.jpg" alt="" /></li>
				<li rel='3'><img src="images/DH3.jpg" alt="" /></li>
				<li rel='4'><img src="images/DH4.jpg" alt="" /></li>
				<li rel='5'><img src="images/DH5.png" alt="" /></li>
				<li rel='6'><img src="images/DH6.jpg" alt="" /></li>
				


			</ul>
		
		</div>
		
	</div>
	
	</div>

	<script type="text/javascript">
	var currentImage;
    var currentIndex = -1;
    var interval;
    function showImage(index){
        if(index < $('#bigPic img').length){
        	var indexImage = $('#bigPic img')[index]
            if(currentImage){   
            	if(currentImage != indexImage ){
                    $(currentImage).css('z-index',2);
                    clearTimeout(myTimer);
                    $(currentImage).fadeOut(250, function() {
					    myTimer = setTimeout("showNext()", 3000);
					    $(this).css({'display':'none','z-index':1})
					});
                }
            }
            $(indexImage).css({'display':'block', 'opacity':1});
            currentImage = indexImage;
            currentIndex = index;
            $('#thumbs li').removeClass('active');
            $($('#thumbs li')[index]).addClass('active');
        }
    }
    
    function showNext(){
        var len = $('#bigPic img').length;
        var next = currentIndex < (len-1) ? currentIndex + 1 : 0;
        showImage(next);
    }
    
    var myTimer;
    
    $(document).ready(function() {
	    myTimer = setTimeout("showNext()", 3000);
		showNext(); //loads first image
        $('#thumbs li').bind('click',function(e){
        	var count = $(this).attr('rel');
        	showImage(parseInt(count)-1);
        });
	});
    
	
	</script>	
</body>	
