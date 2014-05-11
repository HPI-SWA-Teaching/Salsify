rendering
renderAddCourseButtonOn: html
	self session user isAdmin
		ifTrue: [html anchor
					callback: [self createCourseAndShowEditor];
					class: 'button bigButton';
					with: 'Neue Lehrveranstaltung hinzufügen'.].