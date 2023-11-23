accessing
printOn: aStream
	aStream
		nextPutAll: 'Card';
		nextPut: Character space;
		nextPut: $(;
		nextPut: self case;
		nextPut: $)