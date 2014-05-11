rendering
renderHeadingOn: html
	html heading
		level: 3;
		with: 'Gruppe ', self group number asString, ' (', self group asString, ')'