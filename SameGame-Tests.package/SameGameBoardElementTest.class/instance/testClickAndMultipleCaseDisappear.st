tests
testClickAndMultipleCaseDisappear

| board |

"Y: Yellow , B: Blue , G: Green , R: Red
	represents this grid:
	 | B | Y | Y | 
	 | R | R | R | 
	 | B | G | G | 

	"
board := Board new.
board configureGrid: ((CTNewArray2D width: 3 height: 3)
		at: 1 @ 1 put: (BlueCase new);
		at: 2 @ 1 put: (YellowCase new);
		at: 3 @ 1 put: (YellowCase  new);
		at: 1 @ 2 put: (RedCase new);
		at: 2 @ 2 put: (RedCase new);
		at: 3 @ 2 put: (RedCase new);
		at: 1 @ 3 put: (BlueCase  new);
		at: 2 @ 3 put: (GreenCase  new);
		at: 3 @ 3 put: (GreenCase  new);
		yourself ).

board hitCaseOnx: 1 y: 2.
"fonctionne jusque ici"

self assert: (board grid at:1@1) litteral  equals: 'B'.