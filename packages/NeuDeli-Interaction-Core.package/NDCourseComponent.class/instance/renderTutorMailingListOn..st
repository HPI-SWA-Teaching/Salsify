rendering
renderTutorMailingListOn: html

((self session user isAdmin) | (self session user isTutorIn: self course)) & (self course tutors isEmpty not)
		ifTrue: [html anchor
				url: 'mailto:',  (self course tutors inject: '' into: [:list : each| list , each email, ',']); 
				with: [html image
								id: 'mailIcon'; 
								url: NDLibrary / #mailIconSvg; 
								altText: NDLibrary applicationName]; 
				class: 'mailLink']