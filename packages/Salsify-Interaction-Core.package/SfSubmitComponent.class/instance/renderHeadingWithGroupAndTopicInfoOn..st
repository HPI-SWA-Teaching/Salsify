rendering
renderHeadingWithGroupAndTopicInfoOn: html
	| groupAndTopicString |
	groupAndTopicString := 'Abgaben für Gruppe ', self group number asString, ': ', self group asString.

	(self group topic = '')
		ifFalse: [groupAndTopicString := groupAndTopicString, ' mit dem Thema ', self group topic].
	
	html text:  groupAndTopicString