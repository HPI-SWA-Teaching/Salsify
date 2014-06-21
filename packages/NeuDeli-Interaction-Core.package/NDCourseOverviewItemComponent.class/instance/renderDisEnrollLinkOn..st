rendering
renderDisEnrollLinkOn: html
	html span 
			class:'courseItemStatus';
			with: [	html text: 'belegt als Student. '.
					html anchor
					callback: [self disEnrollIn: course];
					with: 'verlassen']