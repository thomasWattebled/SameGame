tests
testExchangeCase
| board case1 case2|

board := Board new.
board configureGrid: ((CTNewArray2D width: 3 height: 3)
		at: 1 @ 1 put: (NullCase  new);
		at: 2 @ 1 put: (YellowCase new);
		at: 3 @ 1 put: (YellowCase  new);
		at: 1 @ 2 put: (NullCase  new);
		at: 2 @ 2 put: (RedCase new);
		at: 3 @ 2 put: (RedCase new);
		at: 1 @ 3 put: (NullCase   new);
		at: 2 @ 3 put: (GreenCase  new);
		at: 3 @ 3 put: (GreenCase  new);
		yourself ).
case1 := board findCaseX: 1 y: 1. 
case2 := board findCaseX: 2 y: 1.
self assert: case1 litteral equals: 'N'.
self assert: case2 litteral equals: 'Y'.

board exchangeCase: 1@1 at: 2@1.

case1 := board findCaseX: 1 y: 1. 
case2 := board findCaseX: 2 y: 1.

self assert: case1 litteral equals: 'Y'.
self assert: case2 litteral equals: 'N'.

