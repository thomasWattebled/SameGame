tests
testReorganiseBoard

| firstBoard game|

"| B |            | B |
 | N |            | Y |
 | Y |         => | B |
 | N |            | N |
 | B |            | N | "

game := Game new.
firstBoard := Board new game:game.
firstBoard := 	firstBoard configureGrid: ((CTNewArray2D width: 1 height: 5)
		at: 1 @ 1 put: (BlueCase new grid:firstBoard);
		at: 1 @ 2 put: (NullCase  new grid:firstBoard);
		at: 1 @ 3 put: (YellowCase new grid:firstBoard);
		at: 1 @ 4 put: (NullCase new grid:firstBoard);
		at: 1 @ 5 put: (GreenCase new grid:firstBoard);
		yourself ).
						
firstBoard reorganizeOnx: 1 y: 1.

self assert: (firstBoard grid at: 1@1)litteral  equals: 'B'. 
self assert: (firstBoard grid at: 1@2)litteral equals: 'Y'.
self assert: (firstBoard grid at: 1@3)litteral equals: 'G'.
self assert: (firstBoard grid at: 1@4)litteral equals: 'N'.
self assert: (firstBoard grid at: 1@5)litteral equals: 'N'.			
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
