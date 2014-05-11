rendering
renderContentOn: html
	| cssClass |
	cssClass := 'notification'.
	self isNegative
		ifTrue: [cssClass := cssClass, ' negative'].
	html div
		class: cssClass;
		with: self notificationText