rendering
renderGeneralDeadlineEditorOn: html
	html textInput
			value: self assignment generalDeadline yyyymmdd;
			callback: [:value | self validateGeneralDeadline: value];
			onChange: (html scriptaculous updater
					id: 'deadlineEditorInner', assignmentEditorID asString;
					callback: [:r | self renderGeneralDeadlineEditorOn: r];
					triggerForm: 'assignmentEditorForm';
					onStatus: 200 do: 'saveNotification("assignmentEditorForm")')