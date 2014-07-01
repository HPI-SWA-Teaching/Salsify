rendering
renderDeleteCourseButtonOn: html
	(self session user isPrivilegedTutorIn: self course)
	ifFalse: [ 
		html anchor
			onClick: (html scriptaculous updater
							id: 'deleteButtonContainer';
							callback: [:r | self renderDeleteCourseSeriouslyButtonOn: r]);
			class: 'button topRightButton';
			with: [html text: 'Lehrveranstaltung löschen']]