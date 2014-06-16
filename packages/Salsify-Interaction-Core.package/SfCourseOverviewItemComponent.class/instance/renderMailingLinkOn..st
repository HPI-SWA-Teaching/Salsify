rendering
renderMailingLinkOn: html

html anchor
	id: 'mailinglist';
	url: 'mailto:', self course mailinglist;
	with: [html image id: 'mailIcon'; 
			url: SfLibrary / #mailIconSvg; 
			altText: SfLibrary applicationName]; 
	class: 'mailLink'