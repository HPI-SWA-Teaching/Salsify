htmlElement-accessing
isTextPresent: aString
	^ '*', aString, '*' match: (driver findElementByTagName: 'body') getText