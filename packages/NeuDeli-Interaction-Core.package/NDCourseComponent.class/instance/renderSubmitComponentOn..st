rendering
renderSubmitComponentOn: html
	(self course isGroupDeadlineOver & (self session user isEnrolledIn: self course) & self session user isAdmin not)
		ifTrue: [html render: (NDSubmitComponent new
								parent: self;
								group: (self course findGroupByUser: self session user))]