tests
testClickAndMultipleCaseDisappear

| board game graphicBoard|

"Y: Yellow , B: Blue , G: Green , R: Red
	represents this grid:
	 | B | Y | Y | 
	 | R | R | R | 
	 | B | G | G | 

	"
	game := Game new.
	board := Board new game:game.
	board configureGrid: ((CTNewArray2D width: 3 height: 3)
		at: 1 @ 1 put: (BlueCase  new grid:board ; position:1@1);
		at: 2 @ 1 put: (YellowCase  new grid:board ; position:2@1);
		at: 3 @ 1 put: (YellowCase  new  grid:board ; position:3@1);
		at: 1 @ 2 put: (RedCase  new  grid:board ; position:1@2);
		at: 2 @ 2 put: (RedCase new  grid:board ; position:2@2);
		at: 3 @ 2 put: (RedCase new  grid:board ; position:3@2);
		at: 1 @ 3 put: (BlueCase   new  grid:board ; position:1@3);
		at: 2 @ 3 put: (GreenCase  new  grid:board ; position:2@3);
		at: 3 @ 3 put: (GreenCase  new  grid:board ; position:3@3);
		yourself).
	graphicBoard := SGBoardElement new.
	graphicBoard grid: board grid.
	graphicBoard sameGameBoard: board.
	
	board drawer: graphicBoard.

board hitCaseOnx: 1 y: 2.
"fonctionne jusque ici"

self assert: (board grid at:1@1) litteral  equals: 'B'.