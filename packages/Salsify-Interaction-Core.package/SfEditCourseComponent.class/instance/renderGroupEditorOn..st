rendering
renderGroupEditorOn: html
	html tableRow: [
		html tableData class: 'tdLeft'; with: [html label: 'Gruppenwahldeadline:'].
		html tableData: [html form id: 'groupdeadlineform'; 
									with: [self renderGroupDeadlineInputOn: html]]].

	html tableRow: [
		html tableData class: 'tdLeft'; with: [html label: 'maximale Gruppengröße:'].
		html tableData: [html form id: 'groupsizeform'; 
									with: [self renderGroupSizeInputOn: html]]].
	