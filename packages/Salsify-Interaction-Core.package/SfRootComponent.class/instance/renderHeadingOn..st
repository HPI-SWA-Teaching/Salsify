rendering
renderHeadingOn: html
	html heading level1
		with: [html anchor
					callback: [self showCourseOverviewComponent];
					with: [html image
								url: SfLibrary / #logoSalsifySvg; 
								altText: SfLibrary applicationName]].