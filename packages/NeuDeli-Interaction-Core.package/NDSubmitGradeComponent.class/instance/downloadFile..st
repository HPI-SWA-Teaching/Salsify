as yet unclassified
downloadFile: aFile
	self requestContext respond: [ :response |
	        response
	            contentType: aFile contentType;
	            document: aFile rawContents;
	            attachmentWithFileName: aFile fileName ]