rendering
renderDeleteCourseButtonOn: html
	html anchor
		onClick: (html scriptaculous updater
						id: 'deleteButtonContainer';
						callback: [:r | self renderDeleteCourseSeriouslyButtonOn: r]);
		class: 'button topRightButton';
		with: [html text: 'Lehrveranstaltung löschen']