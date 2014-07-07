rendering
renderAddCourseButtonOn: html
	| course |
	self session user isAdmin
		ifTrue: [html anchor
					callback: [course := self call: SfCourse new asComponent addValidatedForm.
						course ifNotNil:[self session database addCourse: course]];
					class: 'button bigButton';
					with: 'Neue Lehrveranstaltung hinzufügen'.]