as yet unclassified
findCssClass
	| cssClass |
	
	cssClass := 'courseOverviewItem'.

	(self userIsEnrolled)
		ifTrue: [cssClass := cssClass, ' enrolled'].
	(self userIsTutor | self userIsPrivilegedTutor)
		ifTrue: [cssClass := cssClass, ' tutor'].
	
	^cssClass