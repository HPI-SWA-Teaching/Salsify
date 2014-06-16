as yet unclassified
renderGroup: aGroup on: html
	html anchor 
			url: (aGroup mailToLink); 
			with: ('Gruppe ', aGroup number asString).
	html text: ' (', aGroup asString, ')'