rendering
renderGroupDeadlineInputOn: html
	html textInput
		id: 'groupDeadlineInput';
		value: self course groupDeadline yyyymmdd;
		callback: [:value | [self course groupDeadline: (Date fromString: value)] on: Error do: []];
		onChange: (html scriptaculous updater
			triggerForm: 'groupdeadlineform';
			id: 'groupdeadlineform';
			callback: [:r | self renderGroupDeadlineInputOn: r];
			onStatus: 200 do: 'saveNotification("groupDeadlineInput")')