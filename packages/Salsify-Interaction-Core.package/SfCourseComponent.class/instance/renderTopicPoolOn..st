rendering
renderTopicPoolOn: html
	self course hasTopicpool
		ifTrue: [html listItem
						with: [html text: 'Themenpool: '.	
							self course topicPool
												do:  [:each | html text: each]
												separatedBy: [html text: ', ']]]