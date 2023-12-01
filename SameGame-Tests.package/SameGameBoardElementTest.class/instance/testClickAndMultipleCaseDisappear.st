tests
testClickAndMultipleCaseDisappear

| board resGrid |

"Y: Yellow , B: Blue , G: Green , R: Red
	represents this grid:
	 | B | Y | R | Y | R |
	 | R | R | R | G | R |
	 | N | R | R | R | B |
	 | N | N | R | B | B |
	"
resGrid := ((CTNewArray2D width: 5 height: 4)
		at: 1 @ 1 put: (BlueCase new);
		at: 2 @ 1 put: (YellowCase new);
		at: 3 @ 1 put: (RedCase new);
		at: 4 @ 1 put: (YellowCase new);		
		at: 5 @ 1 put: (RedCase new);
		at: 1 @ 2 put: (RedCase new);
		at: 2 @ 2 put: (RedCase new);
		at: 3 @ 2 put: (RedCase new);
		at: 4 @ 2 put: (GreenCase new);
		at: 5 @ 2 put: (RedCase new);
		at: 1 @ 3 put: (NullCase new);
		at: 2 @ 3 put: (RedCase new);
		at: 3 @ 3 put: (RedCase new);
		at: 4 @ 3 put: (RedCase new);
		at: 5 @ 3 put: (BlueCase new);
		at: 1 @ 4 put: (NullCase new);
		at: 2 @ 4 put: (NullCase new);
		at: 3 @ 4 put: (RedCase new);
		at: 4 @ 4 put: (BlueCase new);
		at: 5 @ 4 put: (BlueCase new);
		yourself ).

board := GameTest new boardForTest.
board hitCaseOnx: 1 y: 2.
"fonctionne jusque ici"

self assert: resGrid asArray equals: board grid asArray.