as yet unclassified
hitCaseOnx: x y: y
| cpt |
	(grid at:x@y) hit.
	hitList notEmpty ifTrue: [self nullCaseOnx: x y:x].
	
	hitList removeAll.
	
	cpt := 1.
	[ cpt <= self  grid width ] whileTrue: [
			self reorganizeOnx: cpt  y: 1 .
			cpt:= cpt +1.].
	