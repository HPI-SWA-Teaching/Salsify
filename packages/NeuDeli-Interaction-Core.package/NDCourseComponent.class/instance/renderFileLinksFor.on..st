rendering
renderFileLinksFor: files on: html
	files do: [:eachFile | html anchor
							class: 'downloadAssignment'; 
							callback: [self downloadFile: eachFile];
							with: [html text: eachFile fileName].
						html break]