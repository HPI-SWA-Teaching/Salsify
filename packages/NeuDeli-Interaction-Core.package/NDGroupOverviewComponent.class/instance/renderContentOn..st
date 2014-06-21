rendering
renderContentOn: html
	self renderHeadingOn: html.
	html table id: 'groupOverview';
		with: [	self renderGroupOverviewTableHeadOn: html.
				self course groups 
								do: [:eachGroup | self renderGroupOverviewRowForGroup: eachGroup on: html]]