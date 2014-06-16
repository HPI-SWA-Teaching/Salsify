rendering
renderEmailEditorOn: html
	html tableRow: [
		html tableData: [html label: 'Email:'].
		html tableData: [html form id: 'emailForm'; 
									with: [html textInput
														id: 'emailInput';
														name: 'titleName';
														callback: [:value | self session user email: value];
														value: self session user email;
														onChange: (
															html scriptaculous updater
															triggerForm: 'emailInput';
															onStatus: 200 do: 'saveNotification("emailInput")')]]]