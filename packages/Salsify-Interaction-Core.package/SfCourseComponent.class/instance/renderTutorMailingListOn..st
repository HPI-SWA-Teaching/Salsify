rendering
renderTutorMailingListOn: html

((self session user isAdmin) | (self session user isTutorIn: self course) | 
(self session user isPrivilegedTutorIn: self course)) & (self course tutors isEmpty not)
		ifTrue: [html anchor
			id: 'tutormailinglist';
				url: 'mailto:',  (self course tutors inject: '' into: [:list : each| list , each email, ',']); 
				with: [html image
								id: 'mailIcon'; 
								url: SfLibrary / #mailIconSvg; 
								altText: SfLibrary applicationName]; 
				class: 'mailLink']