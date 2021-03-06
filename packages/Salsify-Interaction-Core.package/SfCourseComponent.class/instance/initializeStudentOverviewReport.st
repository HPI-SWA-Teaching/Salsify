initialization
initializeStudentOverviewReport
	| studentsOfCourse |
	studentsOfCourse := SortedCollection sortBlock: [:student1 :student2 | student1 username <= student2 username].
	self course groups do: [:eachGroup | studentsOfCourse addAll: eachGroup members].

	self studentReport: (MAReport 
		rows:  studentsOfCourse
		description: SfUser new descriptionReport).
	(self studentReport columns detect: [:each | each label = 'E-Mail' ])
		renderer: [:each :html | html anchor url: ('mailto:', each email);
											 with: each email;
											 yourself].
	(self studentReport columns detect: [:each | each label = 'GitHubName'])
		renderer: [:each :html | html anchor url: ('https://github.com/', each gitHubName);
											 with: each gitHubName;
											 yourself]