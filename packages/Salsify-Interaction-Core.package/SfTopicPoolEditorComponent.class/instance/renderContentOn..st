rendering
renderContentOn: html
	html textInput 
			value: self topic;
			callback: [:value | self validateTopicChange: value];
			onChange: (html scriptaculous updater
								id: 'topicPoolEditorForm';
								callback: [:render | self parent renderTopicPoolEditorsOn: render];
								triggerForm: 'topicPoolEditorForm';
								onStatus: 200 do: 'saveNotification("topicPoolEditorForm"); clickHack();')