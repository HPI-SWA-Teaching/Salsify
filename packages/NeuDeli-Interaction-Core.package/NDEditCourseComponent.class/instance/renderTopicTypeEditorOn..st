rendering
renderTopicTypeEditorOn: html
	| updater |
	updater := (html scriptaculous updater
								id: 'topicPoolEditor';
								callback: [:r | self renderTopicPoolEditorContainerOn: r];
								triggerForm: 'topictypeform';
								onStatus: 200 do: 'saveNotification("topictypeform")').
	html tableRow: [
		html tableData class: 'tdLeft'; with: [html label: 'Themenwahl:'].
		html tableData: [html form id: 'topictypeform'; 
									with: [html radioGroup
												callback: [:value | self validateTopicTypeEditor: value];
												selected: self topicTypeText;
												with: [:group | 
														 html radioButton
																	group: group;
																	value: 'Keine Themen';
																	onChange: updater.
																	html text: 'Keine Themen'.
														html radioButton
																	group: group;
																	value: 'Frei';
																	onChange: updater.
																	html text: 'Frei'.
														 html radioButton
																	group: group;
																	value: 'Auswahlliste';
																	onChange: updater.
																	html text: 'Auswahlliste']]]]