as yet unclassified
byteStreamFromZip: zip
	| collectionStream byteStream |
	
	collectionStream := ReadWriteStream with: (OrderedCollection new).
	zip writeTo: collectionStream.
	byteStream := ReadWriteStream on: (ByteArray new: collectionStream size).
	collectionStream contents 
						do: [:each | each isCharacter 
											ifTrue: [each storeBinaryOn: byteStream]
											ifFalse: [byteStream nextPut: each]].
	^byteStream