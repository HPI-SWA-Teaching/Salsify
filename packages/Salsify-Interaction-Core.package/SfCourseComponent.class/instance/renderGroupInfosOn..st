rendering
renderGroupInfosOn: html
	(self session user isAdmin | 
	(self session user isPrivilegedTutorIn: self course))
		ifTrue: [	html listItem with: [html anchor 
										callback: [self session rootComponent showGroupOverviewComponentWith: self groupReport and: course]; 
										with: [html text: 'Gruppenübersicht']].
			html listItem with: [html anchor
										callback: [self session rootComponent showAllGroupEditComponentwith: (self course)];
										with: [html text: 'Gruppen bearbeiten']].
		
			html listItem with: ('Gruppenwahldeadline: ', self course groupDeadline yyyymmdd).
			html listItem with: ('Maximale Gruppengröße ', self course maximumGroupSize asString)]