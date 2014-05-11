rendering
renderStudentDefinedTopicsOn: html
	html unorderedList
		with: [	html listItem: 'Thema: ', self group topic.
				html listItem: 'Themenbeschreibung: ', self group topicdescription]