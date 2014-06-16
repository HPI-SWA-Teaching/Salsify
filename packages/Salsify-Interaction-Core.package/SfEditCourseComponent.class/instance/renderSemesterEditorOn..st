rendering
renderSemesterEditorOn: html

	| updater |
	
	updater := (html scriptaculous updater
					triggerForm: 'semesterform';
					onStatus: 200 do: 'saveNotification("semesterform")').

	html tableRow: [
		html tableData: [html label: 'Semester:'].
		html tableData: [html form id: 'semesterform'; 
									with: [html radioGroup
												callback: [:value | self course isInSummer: 'Sommer' = value];
												selected: self seasonText;
												with: [:group | html radioButton
																	group: group;
																	value: 'Winter';
																	onChange: updater.
															html text: 'Winter'.
															 html radioButton
																	group: group;
																	value: 'Sommer';
																	onChange: updater.
															html text: 'Sommer'].
										html textInput
												on: #year of: self course;
												value: self course year;
												onChange: updater]]]