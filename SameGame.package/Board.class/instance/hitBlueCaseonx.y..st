as yet unclassified
hitBlueCaseonx: x y: y
	x - 1 > 0 ifTrue: [ (grid at:(x-1)@y) hitBlue ].
	x + 1 <= grid width ifTrue: [ (grid at:(x+1)@y) hitBlue ].
	y - 1 > 0 ifTrue: [ (grid at:x@(y-1)) hitBlue ].
	y + 1 <= grid height ifTrue: [ (grid at:x@(y+1)) hitBlue ].