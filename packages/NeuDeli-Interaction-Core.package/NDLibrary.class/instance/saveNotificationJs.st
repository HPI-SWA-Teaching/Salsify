javascript
saveNotificationJs
	^'
	
	function saveNotification(id) {
		setTimeout(function() {
			fadeInStep(id, 20, 0.0, 0.1);
		}, 0);
		
		setTimeout(function() {
			fadeStep(id, 50, 1.0, 0.1);
		}, 500);
	}
	
	function fadeStep(id,time,fadestate,step) {
		fadestate = fadestate - step;
		if (fadestate < step) {
			fadestate = 0;
		} else {
			setTimeout(function() {
				fadeStep(id, time, fadestate, step);
		    	}, time)
		}
		
		document.getElementById(id).setAttribute("style", "box-shadow: 0 0 4px rgba(0,100,0," + fadestate + ")");
	}
	
	
	
	function fadeInStep(id,time,fadestate,step) {
		fadestate = fadestate + step;
		if (fadestate>1.0 - step) {
			fadestate = 1.0;
		} else {
			setTimeout(function() {
				fadeInStep(id, time, fadestate, step);
		    	}, time)
		}
		
		document.getElementById(id).setAttribute("style", "box-shadow: 0 0 4px rgba(0,100,0," + fadestate + ")");
	}
'