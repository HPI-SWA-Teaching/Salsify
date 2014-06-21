rendering
renderMailinglistLinkOn: html
	self course mailinglist = ''
		ifFalse:[html listItem: [html anchor
									url: 'mailto:', self course mailinglist;
									with: 'Mail-Verteiler';
									class: 'mailLink']]