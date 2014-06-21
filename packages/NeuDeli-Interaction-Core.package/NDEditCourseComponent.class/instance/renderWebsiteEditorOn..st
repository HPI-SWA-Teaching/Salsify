rendering
renderWebsiteEditorOn: html
	html tableRow: [
		html tableData: [html label: 'Website:'].
		html tableData: [html form id: 'websiteform'; 
									with: [html textInput
												id: 'websiteInput';
												callback: [:value | self validateWebsiteChange: value];
												value: self course website;
												onChange: (html scriptaculous updater
															triggerForm: 'websiteform';
															onStatus: 200 do: 'saveNotification("websiteInput")')]]]