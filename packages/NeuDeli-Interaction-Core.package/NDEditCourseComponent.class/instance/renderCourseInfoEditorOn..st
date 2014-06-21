rendering
renderCourseInfoEditorOn: html
	html div
		class: 'courseInfoBox';
	 	with: [	html div
						id: 'deleteButtonContainer';
						with: [self renderDeleteCourseButtonOn: html].
			html table
					class: 'formTable';
					with: [self
							renderTitleEditorOn: html;
							renderSemesterEditorOn: html;
							renderWebsiteEditorOn: html;
							renderMailinglistEditorOn: html;
							renderTutorSelectorsContainerOn: html;
							renderPrivilegedTutorSelectorsContainerOn: html].
			self renderPublishedEditorOn: html]