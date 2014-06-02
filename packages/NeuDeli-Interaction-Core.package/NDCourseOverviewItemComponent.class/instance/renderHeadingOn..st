rendering
renderHeadingOn: html
	html heading level: 3;
		with: [html anchor
					callback: [self session rootComponent showCourseComponentwith: self course];
					with: self course asString]