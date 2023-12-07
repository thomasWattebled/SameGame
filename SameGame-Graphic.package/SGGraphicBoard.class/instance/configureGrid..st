point functions
configureGrid: anArray2D
	"anArray@d is filled up with elements. Make sure that each element has is backpointer set to the board."
	
	self grid: anArray2D.
	self grid withIndexes: [ :column :row |
		(self grid at: column @ row) position: column @ row;
		board: self   ]