tests
testClickOnBlueCase

| board resGrid|

"| B B  |			   | N N |
 | G R  |     =>  | G R |"
board := Board new.
	board configureGrid: ((CTNewArray2D width: 2 height: 2)
		at: 1 @ 1 put: (BlueCase new board:board);
		at: 2 @ 1 put: (BlueCase  new board:board);
		at: 1 @ 2 put: (GreenCase  new board:board);
		at: 2 @ 2 put: (RedCase  new board:board);
		yourself ).

resGrid := Board new.
	resGrid configureGrid: ((CTNewArray2D width: 2 height: 2)
		at: 1 @ 1 put: (GreenCase   new board:board);
		at: 2 @ 1 put: (RedCase    new board:board);
		at: 1 @ 2 put: (NullCase   new board:board);
		at: 2 @ 2 put: (NullCase   new board:board);
		yourself ).
board hitCaseOnx: 1 y: 1. 

self assert: board grid size equals: resGrid grid size.
self assert: ((board grid at:1@1) class) equals: ((resGrid grid at:1@1) class).
self assert: ((board grid at:2@1) class) equals: ((resGrid grid at:2@1) class)