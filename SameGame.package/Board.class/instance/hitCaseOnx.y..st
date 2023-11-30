as yet unclassified
hitCaseOnx: x y: y
	(grid at:x@y) hit.
	hitList notEmpty ifTrue: [self nullCaseOnx: x y:x].
	
	hitList removeAll.
	