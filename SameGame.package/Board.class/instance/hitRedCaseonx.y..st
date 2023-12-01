as yet unclassified
hitRedCaseonx: x y: y
	x - 1 > 0 ifTrue: [ (grid at:x-1@y) hitRed ].
	x + 1 <= grid width ifTrue: [ (grid at:x+1@y) hitRed ].
	y - 1 > 0 ifTrue: [ (grid at:x@y-1) hitYellow ].
	y + 1 <= grid height ifTrue: [ (grid at:x@y+1) hitRed ].