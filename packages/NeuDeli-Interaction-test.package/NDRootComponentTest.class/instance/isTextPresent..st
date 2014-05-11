running
isTextPresent: aString
	^ '*', aString, '*' match: (driver findElementByTagName: 'body') getText