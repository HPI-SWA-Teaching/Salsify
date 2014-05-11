as yet unclassified
showError: anErrorText
	self notificationComponent: NDNotificationComponent new.
	self notificationComponent isNegative: true.
	self notificationComponent notificationText: anErrorText