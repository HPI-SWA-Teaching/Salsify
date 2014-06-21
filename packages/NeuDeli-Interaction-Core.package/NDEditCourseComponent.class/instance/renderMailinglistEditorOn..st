rendering
renderMailinglistEditorOn: html
	html tableRow: [
		html tableData class: 'tdLeft'; with: [html label: 'E-Mail-Verteiler:'].
		html tableData: [html form id: 'mailinglistform'; 
									with: [html textInput
														id: 'mailinglistInput';
														on: #mailinglist of: self course;
														value: self course mailinglist;
														onChange: (html scriptaculous updater
															triggerForm: 'mailinglistform';
															onStatus: 200 do: 'saveNotification("mailinglistInput")')]]]