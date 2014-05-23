rendering
renderContentOn: html
	self renderHeadingOn: html.
	self  session rootComponent breadCrumbComponent course: (NDEditCourseComponent new course: 'Aktuelle Lehrveranstaltungen').
	self session rootComponent breadCrumbComponent currentPageString: 'Benuzterprofil'.
	html 
		div
		class: 'courseInfoBox'; 
		with: [ html table
						class: 'formTable';
						with: [ 
							self 
								renderNameEditorOn: html;
							      renderEmailEditorOn: html;
								renderGitHubEditorOn: html 
							]] 