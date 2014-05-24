rendering
renderCourseInfoBoxOn: html
	html unorderedList
		class: 'courseInfoBox';
		with: [	self renderWebsiteLinkOn: html.
				self renderMailinglistLinkOn: html.
				self renderTutorsOn: html.
				self renderTopicPoolOn: html.
				self renderGroupInfosOn: html.
				self renderStudentInfosOn: html]
		