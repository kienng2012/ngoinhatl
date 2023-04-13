jQuery.fn.extend({
	accordion:function(settings){
		return this.each(function() {
			var $me = this;
			var options = jQuery.extend({
				onEvent:"mouseover",
				delay:600,
				headActive:{
					"borderTop":"0",
					opacity:0.6
				},
				headInActive:{
					"borderTop":"1px solid #0ff",
					opacity:1
				}
			}, settings);
			/* $(".accordion-head").hover(
				function(){$(this).css("opacity",0.75)},
				function(){$(this).css("opacity",1)}
			); */
			$(".accordion-head" ,this).css(options.headInActive).bind(options.onEvent,function(){
				 
				var $parent = $(this.parentNode);
				var $me = $(this);
				if(!$me.data("isAnimated")){
					$me.data("isAnimated",true);
					
					$me.siblings(".accordion-head").removeClass(options.headActiveClass).css(options.headInActive);
					
					$me.addClass(options.headActiveClass).css(options.headActive)
						.next() //".accordion-body"
						.slideDown(options.delay - 100,function(){
							setTimeout(function(){
								$me.data("isAnimated",false);
							},100);
						})
						.siblings(".accordion-body:visible").slideUp(options.delay);
				}
				
			/* 	var checkElement = $(this).next();
				if((checkElement.is('.accordion-body')) && (checkElement.is(':visible'))) {
					return false;
				}
				
				if((checkElement.is('.accordion-body')) && (!checkElement.is(':visible'))) {
					checkElement.siblings(".accordion-body:visible").slideUp('fast');
					checkElement.siblings(".accordion-head").removeClass(options.headActiveClass).css(options.headInActive);
					checkElement.addClass(options.headActiveClass).css(options.headActive)
					.stop().slideDown('normal').end();
					return false;
				} 
 */
			}).eq(0)[options.onEvent]();
		});
	}

});
