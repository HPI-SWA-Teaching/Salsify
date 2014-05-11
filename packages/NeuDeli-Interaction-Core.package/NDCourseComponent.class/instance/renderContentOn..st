rendering
renderContentOn: html
	self renderHeadingOn: html.
	self renderEditCourseButtonOn: html.
	self renderCourseInfoBoxOn: html.
	self renderEnrollButtonOn: html.
	self renderGroupAndTopicSelectorContainerOn: html.
	self renderSubmitComponentOn: html.
	self renderSubmissionsOn: html