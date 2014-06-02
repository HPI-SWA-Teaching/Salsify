rendering
renderMailingLinkOn: html

html anchor
	id: 'maillinglist';
	url: 'mailto:', self course mailinglist;
	with: [html image id: 'mailIcon'; 
			url: NDLibrary / #mailIconSvg; 
			altText: NDLibrary applicationName]; 
	class: 'mailLink'