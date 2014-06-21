rendering
renderContentOn: html
	self renderHeadingOn: html.
	html paragraph: 'Es können noch bis ', self course groupDeadline yyyymmdd, ' 23:59 Gruppen gewählt werden.'.
	html paragraph with: [html label: 'Ich und: '.
									html form
											id: 'groupSelectForm';
											with: [self renderGroupSelectorsOn: html]]