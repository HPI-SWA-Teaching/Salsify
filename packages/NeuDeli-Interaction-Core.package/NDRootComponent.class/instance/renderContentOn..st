rendering
renderContentOn: html
	html document addLoadScript: 'disableAutocomplete()'.
	html div
		id: 'page';
		with: [self renderHeadingOn: html.
			html render: self breadCrumbComponent.
			html render: self notificationComponent.
			html render: self logoutComponent.
			html render: self contentComponent].
	self hideNotifications