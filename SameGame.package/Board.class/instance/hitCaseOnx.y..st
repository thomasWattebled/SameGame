as yet unclassified
hitCaseOnx: x y: y
| cpt |
	hitList add: (self grid at:(x@y)).
	(grid at:x@y) hit.
	hitList size > 1 ifTrue: [self nullCaseOnx: x y:y].
	
	hitList removeAll.
	
	cpt := 1.
	[ cpt <= self  grid width ] whileTrue: [
			self reorganizeOnx: cpt  y: 1 .
			cpt:= cpt +1.].
	