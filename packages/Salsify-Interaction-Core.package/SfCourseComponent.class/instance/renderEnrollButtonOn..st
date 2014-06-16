rendering
renderEnrollButtonOn: html
	((self session user isAdmin) | (self session user isTutorIn: (self course)) | (self session user isEnrolledIn: (self course)))
		ifFalse: [html anchor
					callback: [self enrollIn: course];
					class: 'button bigButton';
					with: [html text: self course asString, ' belegen']]