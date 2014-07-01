rendering
renderSubmitComponentOn: html
	(self course isGroupDeadlineOver & 
	(self session user isEnrolledIn: self course) & (self session user isAdmin | 
	(self session user isPrivilegedTutorIn: self course)) not)
		ifTrue: [html render: (SfSubmitComponent new
								parent: self;
								group: (self course findGroupByUser: self session user))]