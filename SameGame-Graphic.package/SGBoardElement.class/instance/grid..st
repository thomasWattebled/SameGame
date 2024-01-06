accessing
grid: aSameGameBoardGrid

grid := (CTNewArray2D width: (aSameGameBoardGrid width) height: (aSameGameBoardGrid height)).

self setLayoutWidth: (aSameGameBoardGrid width) height: (aSameGameBoardGrid height).

1 to: (aSameGameBoardGrid width) do: [:col |
		1 to: (aSameGameBoardGrid height) do: [:row || sgCaseElement |
			sgCaseElement := SGCaseElement new.
			((aSameGameBoardGrid) at: col @ row) isYellowCase ifTrue: [ sgCaseElement drawYellowCase ].
			((aSameGameBoardGrid) at: col @ row) isGreenCase ifTrue: [ sgCaseElement drawGreenCase ].
			((aSameGameBoardGrid) at: col @ row) isRedCase ifTrue: [ sgCaseElement drawRedCase ].
			((aSameGameBoardGrid) at: col @ row) isNullCase ifTrue: [ sgCaseElement drawNullCase ].
			((aSameGameBoardGrid) at: col @ row) isBlueCase ifTrue: [ sgCaseElement drawBlueCase ].
			sgCaseElement gridPosition: (col @ row).
			sgCaseElement board: self.
			grid at: (col @ row) put: sgCaseElement.
			self addChild: sgCaseElement.
			]
		]