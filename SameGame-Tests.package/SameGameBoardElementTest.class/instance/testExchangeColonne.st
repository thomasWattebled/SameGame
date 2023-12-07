tests
testExchangeColonne
| board |

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

board exchangeCollone1: 1 colonne2: 2.
self assert: ((board findCaseX: 1 y: 1) litteral) equals: 'Y'.  
self assert: ((board findCaseX: 1 y: 2) litteral) equals: 'R'.  
self assert: ((board findCaseX: 1 y: 3) litteral) equals: 'G'. 

 self assert: ((board findCaseX: 2 y: 1) litteral) equals: 'N'.  
self assert: ((board findCaseX: 2 y: 2) litteral) equals: 'N'.  
self assert: ((board findCaseX: 2 y: 3) litteral) equals: 'N'. 