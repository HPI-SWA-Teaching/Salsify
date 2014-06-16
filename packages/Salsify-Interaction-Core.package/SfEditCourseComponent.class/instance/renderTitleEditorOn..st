rendering
renderTitleEditorOn: html
	html tableRow: [
		html tableData: [html label: 'Titel:'].
		html tableData: [html form id: 'titleform'; 
									with: [html textInput
														id: 'titleInput';
														name: 'titleName';
														on: #title of: self course;
														value: self course title;
														onChange: (html scriptaculous updater
															triggerForm: 'titleform';
															onStatus: 200 do: 'saveNotification("titleInput")')]]]