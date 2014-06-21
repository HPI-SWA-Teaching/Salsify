rendering
renderEnrollLinkOn: html
	html anchor
		callback: [self enrollIn: course];
		class: 'courseItemStatus';
		with: 'belegen'