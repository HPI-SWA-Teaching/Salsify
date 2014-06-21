rendering
renderContentOn: html

	| studentsOfCourse |
	studentsOfCourse := SortedCollection sortBlock: [:student1 :student2 | student1 username <= student2 username].
	self renderHeadingOn: html.
	html table id: 'studentOverview';
		with: [	self renderStudentOverviewTableHeadOn: html.
				self course groups
					do: [:eachGroup | studentsOfCourse addAll: eachGroup members].
				studentsOfCourse do: [:eachStudent | self renderStudentRow: eachStudent on: html]]