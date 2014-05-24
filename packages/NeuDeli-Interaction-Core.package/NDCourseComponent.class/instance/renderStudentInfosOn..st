rendering
renderStudentInfosOn: html
	self session user isAdmin
		ifTrue: [	html listItem with: [html anchor 
										callback: [self session rootComponent showStudentOverviewComponentWith: self course]; 
										with: [html text: 'Studentenliste']]]