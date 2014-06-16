rendering
renderRegisterFormOn: html
	html form
		class: 'courseInfoBox';
		with: [html table
					with: [html tableRow
								with: [html tableData 
											with: [html label: 'Voller Name:'].
									html tableData
											with: [html textInput on: #username of: self]].
						html tableRow
								with: [html tableData
											with: [html label: 'HPI-E-Mail:'].
									html tableData
											with: [html textInput on: #email of: self]]].
			html submitButton callback: [self validateRegistration]; text: 'Daten absenden'.]