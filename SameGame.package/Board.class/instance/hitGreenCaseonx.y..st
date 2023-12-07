as yet unclassified
hitGreenCaseonx: x y: y
	x - 1 > 0 ifTrue: [ (grid at:(x-1)@y) hitGreen ].
	x + 1 <= grid width ifTrue: [ (grid at:(x+1)@y) hitGreen ].
	y - 1 > 0 ifTrue: [ (grid at:x@(y-1)) hitGreen ].
	y + 1 <= grid height ifTrue: [ (grid at:x@(y+1)) hitGreen ].