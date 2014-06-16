rendering
renderDeleteCourseSeriouslyButtonOn: html
	html anchor
		onClick: (html scriptaculous updater
						id: 'deleteButtonContainer';
						callback: [:r | self renderDeleteCourseButtonOn: r]);
						class: 'button topRightButton';
						with: 'Doch nicht löschen'.
			
	html anchor 			
		callback: [self session database removeCourse: self course. 
					self session rootComponent showCourseOverviewComponent.
					self session rootComponent showNotification: 'Sie haben ', self course asString, ' gelöscht.'];
		class: 'button dangerousButton topRightButton';
		with: [html text: 'Ja, wirklich löschen!']
