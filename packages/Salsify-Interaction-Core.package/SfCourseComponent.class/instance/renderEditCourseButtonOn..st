rendering
renderEditCourseButtonOn: html
	(self session user isAdmin | 
	(self session user isPrivilegedTutorIn: self course))
		ifTrue: [html anchor
					callback: [self session rootComponent showEditCourseComponentWith: self course];
					class: 'button bigButton';
					with: 'Lehrveranstaltung bearbeiten']