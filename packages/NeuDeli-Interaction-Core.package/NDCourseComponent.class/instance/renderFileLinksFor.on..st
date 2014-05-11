rendering
renderFileLinksFor: files on: html
	files do: [:eachFile | html anchor
							callback: [self downloadFile: eachFile];
							with: [html text: eachFile fileName].
						html break]