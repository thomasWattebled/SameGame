as yet unclassified
exchangeCase: aPoint1 at: aPoint2
	| case | 
	case := (self grid at: aPoint1) .
	self grid at: aPoint1  put: (self grid at: aPoint2 ).
	self grid at: aPoint2  put: case.