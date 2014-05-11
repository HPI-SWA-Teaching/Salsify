as yet unclassified
getAllAsDownloadableZip
	| zip waFile byteStream |
	
	zip := self getAllAsZipArchive.
	byteStream := self byteStreamFromZip: zip.
	
	waFile := WAFile new 
		contentType: 'application/zip';
		fileName: 'submission.zip';
		contents: (byteStream contents).
	^waFile