rendering
renderGroupAndTopicSelectorContainerOn: html
	(self session user isAdmin not & (self session user isEnrolledIn: self course) & self course isGroupDeadlineOver not)
		ifTrue: [html div
						id: 'groupAndTopic';
						with: [self
								renderGroupSelectorContainerOn: html;
								renderTopicSelectorOn: html]]