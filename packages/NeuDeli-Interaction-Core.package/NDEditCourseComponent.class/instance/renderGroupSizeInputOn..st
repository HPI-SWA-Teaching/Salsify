rendering
renderGroupSizeInputOn: html
	html textInput
		id: 'groupsizeInput';
		callback: [:value | value isAllDigits ifTrue: [self course maximumGroupSize: value asInteger]];
		value: self course maximumGroupSize;
		onChange: (html scriptaculous updater
				id: 'groupsizeform';
				callback: [:r | self renderGroupSizeInputOn: r];
				triggerForm: 'groupsizeform';
				onStatus: 200 do: 'saveNotification("groupsizeInput")')