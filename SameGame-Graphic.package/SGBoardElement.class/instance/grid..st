accessing
grid: aSameGameBoardGrid

grid := (CTNewArray2D width: (aSameGameBoardGrid width) height: ((aSameGameBoardGrid height))).

1 to: (aSameGameBoardGrid width) do: [:col |
		(aSameGameBoardGrid height) to: 1 by: -1 do: [:row |
			grid at: (col @ row) put: (SGCaseElement  new).
			(grid at: (col @ row)) position: (col @ row).
			(grid at: (col @ row)) board: self.
			((aSameGameBoardGrid) at: col @ row) isYellowCase ifTrue: [ self drawYellowCasex: col y: row ].
			((aSameGameBoardGrid) at: col @ row) isGreenCase ifTrue: [ self drawGreenCasex: col y: row ].
			((aSameGameBoardGrid) at: col @ row) isRedCase ifTrue: [ self drawRedCasex: col y: row ].
			((aSameGameBoardGrid) at: col @ row) isNullCase ifTrue: [ self drawNullCasex: col y: row ].
			((aSameGameBoardGrid) at: col @ row) isBlueCase ifTrue: [ self drawBlueCasex: col y: row ].
			]
		]