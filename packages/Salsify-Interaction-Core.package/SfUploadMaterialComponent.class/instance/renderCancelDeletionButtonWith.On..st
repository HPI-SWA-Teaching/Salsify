as yet unclassified
renderCancelDeletionButtonWith: aFormID On: html
		html anchor
		onClick: (html scriptaculous updater
						id:  'materialDeletionButton', aFormID;
						callback: [:r | self renderDeletionButtonOn: html with: aFormID]);
		class: 'button';
		with: 'Doch nicht löschen'. 