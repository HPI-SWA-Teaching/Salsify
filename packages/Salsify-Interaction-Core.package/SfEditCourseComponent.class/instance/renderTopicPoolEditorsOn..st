rendering
renderTopicPoolEditorsOn: html
	self resetTopicPoolEditors.
	self topicPoolEditors do: [:each | html render: each]