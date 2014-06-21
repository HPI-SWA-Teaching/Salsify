rendering
renderNameEditorOn: html
	html tableRow: [
		html tableData: [html label: 'Name:'].
		html tableData: [html form id: 'usernameForm'; 
									with: [html textInput
														id: 'usernameInput';
														name: 'titleName';
														callback: [:value | self session user username: value];
														value: self session user username;
														onChange: (
															html scriptaculous updater
															triggerForm: 'usernameInput';
															onStatus: 200 do: 'saveNotification("usernameInput")')]]]