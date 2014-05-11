rendering
renderEditCourseButtonOn: html
	self session user isAdmin
		ifTrue: [html anchor
					callback: [self session rootComponent showEditCourseComponentWith: self course];
					class: 'button bigButton';
					with: 'Lehrveranstaltung bearbeiten']