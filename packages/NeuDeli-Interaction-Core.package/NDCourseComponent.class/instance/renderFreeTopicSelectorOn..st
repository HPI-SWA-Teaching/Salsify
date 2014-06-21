rendering
renderFreeTopicSelectorOn: html
	html form
		id: 'freeTopicForm';
		with: [html table
					class: 'formTable';
					with: [html tableRow: [html tableData: [html label: 'Thema: '].
										html tableData: [html textInput
																callback: [:value | (self course findGroupByUser: self session user) topic: value];
																value: (self course findGroupByUser: self session user) topic;
																onChange: (html scriptaculous updater
																	triggerForm: 'freeTopicForm';
																	onStatus: 200 do: 'saveNotification("freeTopicForm")') ]].
						html tableRow: [html tableData: [html label: 'Kurzbeschreibung: '].
										html tableData: [html textArea
																	callback: [:value | (self course findGroupByUser: self session user) topicdescription: value];
																	value: (self course findGroupByUser: self session user) topicdescription;
																	onChange: (html scriptaculous updater
																			triggerForm: 'freeTopicForm';
																			onStatus: 200 do: 'saveNotification("freeTopicForm")')]]]]