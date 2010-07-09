var timer = 0;
var zmenu = 0;

function menu_open() { 
        menu_canceltimer();
        menu_close();
        zmenu = $(this).find('ul').css('visibility', 'visible');
}

function menu_close() {
        if(zmenu) zmenu.css('visibility', 'hidden');
}

function menu_timer() {
    timer = window.setTimeout(menu_close, 250);
}

function menu_canceltimer() {  
        if(timer) {
                window.clearTimeout(timer);
                timer = null;
        }
}

var curtest = 1;
var numtest = 11;

function init_testimonial() {
	curtest = Math.ceil(numtest*Math.random());
	$("#tt").load("/testimonial.php", {curtest: curtest});
	$("#wt").text(curtest + "/" + numtest);
}

function switch_testimonial(increment) {
	$("#tt").hide();
	curtest += increment;
	$("#tt").load("/testimonial.php", {curtest: curtest});
	$("#wt").text(curtest + "/" + numtest);
	$("#tt").fadeIn('fast');
}

function right_arrow() {
	if (curtest < numtest) {
		switch_testimonial(1);
	}
}
function left_arrow() {
	if (curtest > 1) {
		switch_testimonial(-1);
	}
}

$(document).ready(function() {
        $('#menu > li').bind('mouseover', menu_open);
        $('#menu > li').bind('mouseout',  menu_timer);
	$('#la').bind('click', left_arrow);
	$('#ra').bind('click', right_arrow);
	init_testimonial();
	$('#status').load('/status.php');
});

document.onclick = menu_close;

