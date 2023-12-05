as yet unclassified
reorganizeOnx: x y: y

	| cpt case |

	cpt := self grid height.
	(self grid at: x @ y) isNullCase ifTrue: [
		[ (self grid at: x @ cpt) isNullCase and: cpt > y ] whileTrue: [
			cpt := cpt - 1 ] ]
	ifFalse: [  y < self grid height ifTrue: [ ^ self reorganizeOnx: x y: y+1  ] ].
	
	y = cpt ifTrue: [ ^ self ].
	case := self grid at: x @ y.
	self grid at: x @ y put: (self grid at: x @ cpt).
	self grid at: x @ cpt put: case.
	
	y < self grid height ifTrue: [ ^ self reorganizeOnx: x y: y+1  ]