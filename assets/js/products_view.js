$(document).ready(function () {
	cimg = 0;
	$(".slideshow > ul > li > img").filter("img").each(function (index) {
		v = $(this).attr("src");
		v = v.replace("_m.png", "_s.png");
		/*for scanning bots*/
		tmphrf = ' <a href="" class="tlimg"'+
		'onclick="return showImg(' + index + ')">'+
		'<img src="' + v + '" alt="thumb"/></a>';
		$("#imgthumbs").append(tmphrf);
		v = v.replace("_s.png", "_l.png");
		tmpcls = '<a class="megabox lrgimg' + index + '" href="' + v + '"></a>';
		$("#largeShow").append(tmpcls);
		cimg = cimg + 1;
	});
	if (cimg <= 1) {
		$("#imgthumbs").hide();
	}
	$(".slideshow").blinds();
	showImg(0);

});
function showImg(i) {
	$(".slideshow").blinds_change(i);
	return false;
}


