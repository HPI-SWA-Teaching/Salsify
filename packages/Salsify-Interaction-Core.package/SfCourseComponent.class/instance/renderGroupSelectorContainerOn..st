rendering
renderGroupSelectorContainerOn: html
	html render: (SfGroupSelectorContainerComponent new
					parent: self;
					course: course)
