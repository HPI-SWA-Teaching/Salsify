initialization
initializeStudentOverviewReport
	| studentsOfCourse |
	studentsOfCourse := SortedCollection sortBlock: [:student1 :student2 | student1 username <= student2 username].
	self course groups do: [:eachGroup | studentsOfCourse addAll: eachGroup members].
	
	self studentReport: (MAReport 
		rows:  studentsOfCourse
		description: SfUser new descriptionReport).
