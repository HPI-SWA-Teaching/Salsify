rendering
renderEnrollOrDisenrollLinkOn: html
	(self session user isAdmin | self userIsTutor)
		ifFalse: [self userIsEnrolled
					ifTrue: [self renderDisEnrollLinkOn: html]
					ifFalse: [self renderEnrollLinkOn: html]]