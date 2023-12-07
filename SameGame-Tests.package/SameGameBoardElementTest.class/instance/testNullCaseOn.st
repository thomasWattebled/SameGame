tests
testNullCaseOn

| firstBoard |

"| B G |   =>       | N G |
 | G R |            | G R |       "
firstBoard := Board new.
firstBoard := 	firstBoard configureGrid: ((CTNewArray2D width: 2 height: 2)
		at: 1 @ 1 put: (BlueCase new board:firstBoard);
		at: 1 @ 2 put: (GreenCase   new board:firstBoard);
		at: 2 @ 1 put: (GreenCase  new board:firstBoard);
		at: 2 @ 2 put: (RedCase  new board:firstBoard);

		yourself ).
						
firstBoard nullCaseOnx: 1 y:  1.

self assert: (firstBoard grid at: 1@1)litteral  equals: 'N'. 
self assert: (firstBoard grid at: 1@2)litteral equals: 'G'.
self assert: (firstBoard grid at: 2@1)litteral equals: 'G'.
self assert: (firstBoard grid at: 2@2)litteral equals: 'R'.
			
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
