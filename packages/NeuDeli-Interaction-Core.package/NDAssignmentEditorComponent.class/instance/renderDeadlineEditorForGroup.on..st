rendering
renderDeadlineEditorForGroup: aGroup on: html
	html tableRow
			with: [html tableData
						with: [html label
									class: 'innerLabel';
									with: 'Gruppe ', aGroup number asString, ': '].
				html tableData
						with: [html textInput
									class: 'groupSpecificDeadlineEditor';
									value: (self getDeadlineForGroup: aGroup);
									callback: [:value | self validateDeadline: value forGroup: aGroup];
									onChange: (html scriptaculous updater
														id: 'deadlineEditorInner', self assignmentEditorID asString;
														callback: [:r | self renderGroupSpecificDeadlineEditorOn: r];
														triggerForm: 'assignmentEditorForm';
														onStatus: 200 do: 'saveNotification("assignmentEditorForm")')]]