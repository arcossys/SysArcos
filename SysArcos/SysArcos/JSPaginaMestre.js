$('.top-line').after('<div class="mobile-menu d-xl-none">');
	$('.top-menu').clone().appendTo('.mobile-menu');
	$('.mobile-menu-btn').click(function(){
		$('.mobile-menu').stop().slideToggle();
	});