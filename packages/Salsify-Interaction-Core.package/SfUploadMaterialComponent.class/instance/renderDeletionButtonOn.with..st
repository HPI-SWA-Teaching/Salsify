as yet unclassified
renderDeletionButtonOn: html with: aFormID
	 html anchor
		class: 'button';
		onClick: (html scriptaculous updater
		id: 'materialDeletionButton', aFormID;
		triggerForm: (html scriptaculous element up: 'form');
		callback: [:r | ]);
		with: [html image id:'closeButton';
				url: SfLibrary / #closebuttonSvg]