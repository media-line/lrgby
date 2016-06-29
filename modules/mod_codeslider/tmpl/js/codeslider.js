//  Generator: Geany Ubuntu-12.04.1-Precise
//  Copyright: http://codematrix.ru/ Alex Voloh, Elena Kryukova - License GNU/GPL v.2 or later

	jQuery(document).ready(function(){
	// GALLERY SETTINGS
	// image descriptions (1 = on / 0 = off)
	var tooltip = jQuery("#slidertooltip").text();
	// animation delay
	var pretiming = jQuery("#slideranimtime").text() * 1;
	var timing = pretiming;
	// autoscroll (true = on / false = off)
	var autoscroll = jQuery("#autoscrollparam").text();
	// scroll delay
	var autoprev = jQuery("#scrollspeed").attr("data") * 1;
	var autotime = autoprev;
	//DEBUG
	var codedebug = jQuery("#codedebug").attr("data");
	
	jQuery(".codeimage img").each(function(){
			var src = jQuery(this).attr("src");
			jQuery(this).attr("src", "");
			jQuery(this).attr("src", src)
		})
	// Images container size
jQuery(".codeimage img").on("load", function(){
	jQuery(".codeimage").show();
	var allimage = jQuery(".codeimage").length;
	var imgwidth = jQuery(".codeimage img:first").width();
	var imgheight = jQuery(".codeimage img:first").height();
	if(codedebug == true) {
	jQuery(".codeimage img").each(function(){
			if(jQuery(this).width() > jQuery(window).width()) {
				var badimagesrc = jQuery(this).attr("src");
				var badimagewidth = jQuery(this).width();
				var badimageheight = jQuery(this).height();
				jQuery("<div class='codedebug' style='text-align: center'></div>")
				.html("<p>Very large <a href='" + badimagesrc + "' target='_blank'>image.</a> Size: " + badimagewidth + "x" + badimageheight + ". You must be <a href='https://www.google.ru/search?hl=en&q=how+to+resize+image' target='_blank'>resize it</a></p>")
				.insertAfter(".codegallery");
			}
			});
		}
	if(imgwidth > jQuery(window).width()) {
		var imgwidth = jQuery(window).width() - 100;
		}
	var width = allimage * imgwidth;
	jQuery(".carousel").width(width);
	jQuery(".codegallery").height(imgheight - 5);
	jQuery(".codegallery").width(imgwidth);
		jQuery(".codeimage img").each(function(){
			jQuery(this).width(imgwidth);
			});
	});
	
	/////
	if(jQuery.browser.msie){
	var allimage = jQuery(".codeimage").length;
	var imgwidth = jQuery(".codeimage img:first").width();
	var imgheight = jQuery(".codeimage img:first").height();
	if(codedebug == true) {
	jQuery(".codeimage img").each(function(){
			if(jQuery(this).width() > jQuery(window).width()) {
				var badimagesrc = jQuery(this).attr("src");
				var badimagewidth = jQuery(this).width();
				var badimageheight = jQuery(this).height();
				jQuery("<div class='codedebug' style='text-align: center'></div>")
				.html("<p>Very large <a href='" + badimagesrc + "' target='_blank'>image.</a> Size: " + badimagewidth + "x" + badimageheight + ". You must be <a href='https://www.google.ru/search?hl=en&q=how+to+resize+image' target='_blank'>resize it</a></p>")
				.insertAfter(".codegallery");
			}
			});
		}
	if(imgwidth > jQuery(window).width()) {
		var imgwidth = jQuery(window).width() - 100;
		}
	var width = allimage * imgwidth;
	jQuery(".carousel").width(width);
	jQuery(".codegallery").height(imgheight);
	jQuery(".codegallery").width(imgwidth);
		jQuery(".codeimage img").each(function(){
			jQuery(this).width(imgwidth);
			});
		}
	// 4IE 
	jQuery(".carousel").css("marginLeft", "0px");
	// active images
	jQuery(".codeimage:first").addClass("activeimg");
	jQuery(".imgtooltip div").text(jQuery(".activeimg img").attr("alt"));
    // IE style
    if(jQuery.browser.msie && jQuery.browser.version < 9){
    jQuery(".previmage, .nextimage").css("opacity", 0.3);
    jQuery(".previmage, .nextimage").hover(function(){
		jQuery(this).css({"opacity" : 0.8})
		}, function(){
			jQuery(this).css({"opacity" : 0.3});
			});
    }
    
	function forward() {
		jQuery(".nextimage").removeClass("codenext");
		jQuery(".previmage").removeClass("codeprev");
		var imgwidth = jQuery(".codeimage img").width();
		var right = jQuery(".carousel").width() - imgwidth;
		var modright = right * (-1);
		var position = jQuery(".carousel").css("marginLeft");
		if(jQuery(".carousel").css("marginLeft") != modright + "px") {
		jQuery(".carousel").animate({
			"marginLeft" : "+=" + (-imgwidth) + "px"
			}, {duration: timing, queue: false, complete: function(){
					jQuery(".previmage").addClass("codeprev");
					jQuery(".nextimage").addClass("codenext");
					if(jQuery(".activeimg").next().length > 0) {
					jQuery(".activeimg").next().addClass("activeimg").prev().removeClass("activeimg");
					jQuery(".imgtooltip div").text(jQuery(".activeimg img").attr("alt"));
					}
				}
			});
		}
		// backward
		if(jQuery(".carousel").css("marginLeft") == modright + "px") {
		jQuery(".nextimage").removeClass("codenext");
		jQuery(".previmage").removeClass("codeprev");
		jQuery(".carousel").animate({
			"marginLeft" : "0px"
			}, {duration: timing * 2, queue: false, complete: function(){
					jQuery(".previmage").addClass("codeprev");
					jQuery(".nextimage").addClass("codenext");				
					if(jQuery(".carousel").css("marginLeft") == "0px") {
					jQuery(".activeimg").removeClass("activeimg");
					jQuery(".codeimage:first").addClass("activeimg");
					jQuery(".imgtooltip div").text(jQuery(".activeimg img").attr("alt"));
					}
				}
			});
		}
	};
	
	function backward() {
		
	var imgwidth = jQuery(".codeimage img").width();
	var right = jQuery(".carousel").width() - imgwidth;
	var modright = right * (-1);
	var position = jQuery(".carousel").css("marginLeft");
	
	if(jQuery(".carousel").css("marginLeft") < "0px") {
		jQuery(".previmage").removeClass("codeprev");
		jQuery(".nextimage").removeClass("codenext");
		jQuery(".carousel").animate({
			"marginLeft" : "+=" + imgwidth
			}, {
				duration: timing, 
				queue: false,
				complete: function(){
							jQuery(".previmage").addClass("codeprev");
							jQuery(".nextimage").addClass("codenext");
							if(jQuery(".activeimg").prev().length > 0) {
							jQuery(".activeimg").prev().addClass("activeimg").next().removeClass("activeimg");
							jQuery(".imgtooltip div").text(jQuery(".activeimg img").attr("alt"));	
								}
							}
					});
			}
	// forward
	if(jQuery(".carousel").css("marginLeft") == "0px") {
		jQuery(".previmage").removeClass("codeprev");
		jQuery(".nextimage").removeClass("codenext");
		jQuery(".carousel").animate({
			"marginLeft" : modright + "px"
			}, {duration: timing * 2, queue: false, complete: function(){
							jQuery(".previmage").addClass("codeprev");
							jQuery(".nextimage").addClass("codenext");
							if(jQuery(".carousel").css("marginLeft") == modright + "px") {
								jQuery(".activeimg").removeClass("activeimg");
								jQuery(".codeimage:last").addClass("activeimg");
								jQuery(".imgtooltip div").text(jQuery(".activeimg img").attr("alt"));
					}
				}
			});
		}
	}
	
	
	// autoscroll
	if(autoscroll == "1") {
	jQuery(document).live("ready", function(){
		jQuery("body").everyTime(autotime, function() {
		jQuery(".codenext").click();
		});
	});
	
	jQuery(".codegallery").live("mouseover", function(){
	jQuery("body").stopTime();
	});
	
		jQuery(".codegallery").live("mouseout", function(){
		jQuery("body").everyTime(autotime, function() {
		jQuery(".codenext").click();
	});
});
};

	
	// next image
	jQuery(".codenext").live("click", function(){
		forward();
		});
		
	// prev image	
	jQuery(".codeprev").live("click", function(){
		backward();
	});
	
	//  image description
	if(tooltip == "1") {
	jQuery(".codegallery").mouseover(function(){
		jQuery(".imgtooltip div").stop(true);
		jQuery(".imgtooltip").stop(true).css("display", "block").animate({
			"opacity" : 1,
			"height" : "60px"
			}, {duration: timing, queue: false, complete: function(){
				jQuery(".imgtooltip div").animate({
					"opacity" : 1
					}, {duration: 400, queue: false});
				}});
			if(jQuery(".imgtooltip").css("opacity") == 1) {
				jQuery(".imgtooltip").stop(true);
				jQuery(".imgtooltip div").stop(true);
				}
		});
		
	jQuery(".codegallery").mouseout(function(){
		jQuery(".imgtooltip div").animate({
			"opacity" : 0
			}, {duration: 400, queue: false});
		jQuery(".imgtooltip").animate({
			"opacity" : 0,
			"height" : "0px"
			}, {duration: timing, queue: false}).css("display", "block");
		});
	};
	
	// image link
	jQuery("img").click(function(){
		if(jQuery(this).attr("data-href")) {
			window.open(jQuery(this).attr("data-href"));
			}
		})
			
	jQuery("img").mouseover(function(){
		if(jQuery(this).attr("data-href")) {
			jQuery(this).css("cursor", "pointer");
			}
		});

	//end
	});
