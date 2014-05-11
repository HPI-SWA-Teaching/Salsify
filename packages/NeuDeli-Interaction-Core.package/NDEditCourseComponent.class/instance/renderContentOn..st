rendering
renderContentOn: html
	self initializeWithCourse.

	self renderHeadingOn: html.
	self renderCourseInfoEditorOn: html.
	self renderGroupsAndTopicsEditorOn: html.
	self renderAssignmentEditorsContainerOn: html.