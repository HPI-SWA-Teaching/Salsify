rendering
renderCourseOverviewItemsOn: html
	self session database class courses
		do: [:each | (each published  | self session user isAdmin) 
						ifTrue: [	html render: (SfCourseOverviewItemComponent new course: each)]]