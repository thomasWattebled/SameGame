initialization
initialize 

	super initialize.
	self geometry: (BlRoundedRectangleGeometry cornerRadius: 5).
	self constraintsDo: [ :aLayoutConstraints |
		aLayoutConstraints horizontal matchParent.
		aLayoutConstraints vertical matchParent ].
	self size: 50@50.
	self addEventHandlerOn: BlMouseUpEvent do: [ :anEvent | self click ].