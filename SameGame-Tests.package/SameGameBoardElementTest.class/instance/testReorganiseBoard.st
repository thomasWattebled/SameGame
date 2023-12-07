tests
testReorganiseBoard

| firstBoard |

"| B |            | B |
 | N |            | Y |
 | Y |         => | B |
 | N |            | N |
 | B |            | N | "

firstBoard := Board new.
firstBoard := 	firstBoard configureGrid: ((CTNewArray2D width: 1 height: 5)
		at: 1 @ 1 put: (BlueCase new board:firstBoard);
		at: 1 @ 2 put: (NullCase  new board:firstBoard);
		at: 1 @ 3 put: (YellowCase new board:firstBoard);
		at: 1 @ 4 put: (NullCase new board:firstBoard);
		at: 1 @ 5 put: (GreenCase new board:firstBoard);
		yourself ).
						
firstBoard reorganizeOnx: 1 y: 1.

self assert: (firstBoard grid at: 1@1)litteral  equals: 'B'. 
self assert: (firstBoard grid at: 1@2)litteral equals: 'Y'.
self assert: (firstBoard grid at: 1@3)litteral equals: 'G'.
self assert: (firstBoard grid at: 1@4)litteral equals: 'N'.
self assert: (firstBoard grid at: 1@5)litteral equals: 'N'.			
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				