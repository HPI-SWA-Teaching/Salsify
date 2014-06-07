as yet unclassified
renderFileLinksFor: files on: html
	files do: [:each | html anchor
							class: 'downloadAssignment'; 
							callback: [self downloadFile: each];
							with: [html text: each fileName].
						html break]