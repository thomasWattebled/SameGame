tests
testClickOnBlueCase

| board resGrid game|

"| B B  |			   | N N |
 | G R  |     =>  | G R |"
game := Game new.
board := Board new game:game.
	board configureGrid: ((CTNewArray2D width: 2 height: 2)
		at: 1 @ 1 put: (BlueCase new grid:board);
		at: 2 @ 1 put: (BlueCase  new grid:board);
		at: 1 @ 2 put: (GreenCase  new grid:board);
		at: 2 @ 2 put: (RedCase  new grid:board);
		yourself ).

resGrid := Board new.
	resGrid configureGrid: ((CTNewArray2D width: 2 height: 2)
		at: 1 @ 1 put: (GreenCase   new grid:board);
		at: 2 @ 1 put: (RedCase    new grid:board);
		at: 1 @ 2 put: (NullCase   new grid:board);
		at: 2 @ 2 put: (NullCase   new grid:board);
		yourself ).
board hitCaseOnx: 1 y: 1. 

self assert: board grid size equals: resGrid grid size.
self assert: ((board grid at:1@1) class) equals: ((resGrid grid at:1@1) class).
self assert: ((board grid at:2@1) class) equals: ((resGrid grid at:2@1) class)