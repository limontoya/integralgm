// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require toastr
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require data-confirm-modal
//= require_tree .

window.setTimeout(function() {
    $(".alert").fadeTo(500, 0).slideUp(500, function(){
        $(this).remove(); 
    });
}, 4000);

window.setTimeout(function() {
    $(".notice").fadeTo(500, 0).slideUp(500, function(){
        $(this).remove(); 
    });
}, 4000);


function startTime() {
    var today = new Date();
    var h = today.getHours();
    var m = today.getMinutes();
    var s = today.getSeconds();
    m = checkTime(m);
    s = checkTime(s);

    var horaCol = "Hora 🇨🇴 ";
    var horaSys = "";

    horaSys = h + ":" + m + ":" + s;

    document.getElementById('txTime').innerHTML = horaCol + horaSys.bold();
    var t = setTimeout(startTime, 500);
}
function checkTime(i) {
    if (i < 10) {i = "0" + i};  // add zero in front of numbers < 10
    return i;
}

function checkTRM(){
	var iframe = document.getElementById('frameTRM');

	if (iframe!=null || iframe != undefined){
		iframe  = document.getElementById('frameTRM'),
		iframeWin = iframe.contentWindow || iframe,
		iframeDoc = iframe.contentDocument || iframeWin.document;


	    iframe.onload = function () {
	        var body = iframe.contentWindow.document.querySelector('body');
	        body.style.fontFamily = 'Malayalam MN';
	        body.style.color = '#4286f4';
	        body.style.fontSize = '14px';
	        body.style.lineHeight = '20px';
	    };


	  $(iframeDoc).ready(function (event) {
	    iframeDoc.open();
	    iframeDoc.write('\<script src="http://www.dolar-colombia.com/widget.js?t=1&c=1">\<\/script>');
	    iframeDoc.close();
	  });
	} //else alert('hey! soy null.. porque?');
}

function redirTRM(){
	window.top.location.href = "http://www.dolar-colombia.com/";
}
