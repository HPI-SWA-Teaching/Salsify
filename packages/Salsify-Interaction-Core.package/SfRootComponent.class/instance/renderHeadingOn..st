rendering
renderHeadingOn: html
	html heading level1
		with: [html anchor
					callback: [self showCourseOverviewComponent];
					with: [html image
								url: SfLibrary / #logoSalsifySvg; 
								altText: SfLibrary applicationName]].
							
					"		html anchor 
						id: 'userProfileLink';
						callback:[self session rootComponent contentComponent: NDUserprofileOverviewComponent new];
						onMouseOver:( html scriptaculous updater id: 'userProfileLink'; callback: [:ajaxHtml | ajaxHtml text: 'a'] );
						with: [html image id: 'profilePicture'; url: NDLibrary / #profilePng.]]"