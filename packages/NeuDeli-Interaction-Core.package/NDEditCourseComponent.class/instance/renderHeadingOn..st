rendering
renderHeadingOn: html
	| headline |
		headline := 'Lehrveranstaltung bearbeiten'.
		self course title = ''
			ifTrue: [headline :=  'Neue Lehrveranstaltung anlegen'].
		
		html heading
			level: 2;
			with:  headline.