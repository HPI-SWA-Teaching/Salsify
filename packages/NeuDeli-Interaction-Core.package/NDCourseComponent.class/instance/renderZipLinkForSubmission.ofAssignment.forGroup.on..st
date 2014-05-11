rendering
renderZipLinkForSubmission: submission ofAssignment: anAssignment forGroup: aGroup on: html
	html anchor
			class: 'zipDownload'; 
			callback: [self downloadFile: 
								((submission getAllAsDownloadableZip)
									fileName:  ((anAssignment title), ' Gruppe ', (aGroup number asString), '.zip'))];
			with: [html text: 'als zip herunterladen']