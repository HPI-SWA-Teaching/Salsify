displaying
showError: anErrorText
	self notificationComponent: SfNotificationComponent new.
	self notificationComponent isNegative: true.
	self notificationComponent notificationText: anErrorText