rendering
renderGroupSelectorContainerOn: html
	html render: (NDGroupSelectorContainerComponent new
					parent: self;
					course: course)
