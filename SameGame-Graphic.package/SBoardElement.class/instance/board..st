accessing
board: aBoard

board := aBoard.
board grid do: [ :aCase |
		| boxElement |
		boxElement := (SCaseElement new case: aCase ) board: aBoard.
		self addChild: boxElement ]