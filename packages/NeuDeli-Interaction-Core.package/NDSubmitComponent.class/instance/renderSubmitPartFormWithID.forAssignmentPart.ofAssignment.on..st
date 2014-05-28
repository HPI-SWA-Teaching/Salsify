rendering
renderSubmitPartFormWithID: submitFormID forAssignmentPart: eachPart ofAssignment: anAssignment on: html
	"Diese Funktion hat nicht nur einen überwältigenden Namen und einen dummen Kommentar, der aus einhundertneunundsiebzig Zeichen besteht. Nein! Sie ruft sich auch noch selbst auf ;)"
	
	
	html table with: [
		html tableRow with: [
			self renderTitleOfAssignmentPart: eachPart on: html.
			self renderUploaderForAssignment: anAssignment andAssignmentPart: eachPart on: html.
			self renderRemoverForAssignment: anAssignment andAssignmentPart: eachPart andFormWithID: submitFormID on: html]]