rendering
renderStudentInfosOn: html
	((self session user isAdmin) or:
	[self session user isPrivilegedTutorIn: self course])
		ifTrue: [	html listItem with: [html anchor 
										callback: [self session rootComponent showStudentOverviewComponentWith: self studentReport and: self course]; 
										with: [html text: 'Studentenliste']]]