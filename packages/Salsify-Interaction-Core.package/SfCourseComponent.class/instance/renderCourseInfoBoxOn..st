rendering
renderCourseInfoBoxOn: html
	html unorderedList
		class: 'courseInfoBox';
		with: [	html heading level: 3; with: [ html text:  'Lehrveranstalungsinformationen' ].
				self renderWebsiteLinkOn: html.
				self renderMailinglistLinkOn: html.
				self renderTutorsOn: html.
				self renderTopicPoolOn: html.
				self renderGroupInfosOn: html.
				self renderStudentInfosOn: html.
				self renderMaterialUploadOn: html. 																																																																																																																				]
		