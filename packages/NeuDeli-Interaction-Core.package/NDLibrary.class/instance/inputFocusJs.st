javascript
inputFocusJs
	"this is to focus on newly rendered elements when the original click triggered them to be renewed with ajax"
	
	"add clickHack() to all updaters that have a rendering callback!"
	
	^ '
document.onmousedown = saveMousePos;
document.onkeypress = disableIfTab;

var x;
var y;
var enableClickHack = false;

function saveMousePos(evt) {
	enableClickHack = true;
	x = evt.clientX;
	y = evt.clientY;
}

function disableIfTab(evt) {
	var KeyID = (window.event) ? event.keyCode : evt.keyCode
	 if (KeyID == 9) { //TAB
		enableClickHack = false;
	}
}

function clickHack() {
	if (enableClickHack) {
		setTimeout(function() {
		var element = document.elementFromPoint(x,y);element.focus();}, 0);
	}
	
}
'