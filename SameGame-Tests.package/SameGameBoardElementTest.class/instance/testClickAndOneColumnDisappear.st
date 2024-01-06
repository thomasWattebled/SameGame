tests
testClickAndOneColumnDisappear

| board game |

	"Y: Yellow , B: Blue , G: Green , R: Red
	represents this grid:
	 | R | Y | r | 
	 | B | y | b | 
	 | G | y | g | 
	"
	
game := Game new.
board := Board new game:game.
board configureGrid: ((CTNewArray2D width: 3 height: 3)
		at: 1 @ 1 put: (RedCase  new grid:board);
		at: 2 @ 1 put: (YellowCase new grid:board);
		at: 3 @ 1 put: (RedCase   new grid:board);
		at: 1 @ 2 put: (BlueCase new grid:board);
		at: 2 @ 2 put: (YellowCase  new grid:board);
		at: 3 @ 2 put: (BlueCase new grid:board);
		at: 1 @ 3 put: (GreenCase  new grid:board);
		at: 2 @ 3 put: (YellowCase new grid:board);
		at: 3 @ 3 put: (GreenCase  new grid:board);
		yourself ).

board hitCaseOnx: 2 y: 2.

self assert: (board grid at:3@1) litteral  equals: 'N'.
self assert: (board grid at:3@2) litteral  equals: 'N'.
self assert: (board grid at:3@3) litteral  equals: 'N'.

self assert: (board grid at:2@1) litteral  equals: 'R'.
self assert: (board grid at:2@2) litteral  equals: 'B'.
self assert: (board grid at:2@3) litteral  equals: 'G'.

