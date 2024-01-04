accessing
board: aSameGameBoard

board := (CTNewArray2D width: (aSameGameBoard grid width) height: ((aSameGameBoard grid height))).
aSameGameBoard grid do: [ :aCase |
		board at: 1 @ 1 put: (SGCaseElement  new).
		aCase isYellowCase ifTrue: [ (board at: 1 @ 1) drawYellowCasex: 1 y: 1 ].
		aCase isRedCase ifTrue: [ (board at: 1 @ 1) drawRedCasex: 1 y: 1 ].
		aCase isGreenCase ifTrue: [ (board at: 1 @ 1) drawGreenCasex: 1 y: 1 ].
		aCase isBlueCase ifTrue: [ (board at: 1 @ 1) drawBlueCasex: 1 y: 1 ].
		aCase isNullCase ifTrue: [ (board at: 1 @ 1) drawNullCasex: 1 y: 1 ].
]