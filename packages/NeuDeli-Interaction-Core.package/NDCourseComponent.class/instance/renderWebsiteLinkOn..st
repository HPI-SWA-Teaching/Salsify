rendering
renderWebsiteLinkOn: html
	self course website = ''
		ifFalse: [html listItem
						with: [html anchor
									url: self course website;
									with: 'Website';
									class: 'externalLink']]