accessing
initialize

	super initialize.
	self background: (BlBackground paint: Color veryVeryDarkGray).
	self layout:
		(BlGridLayout horizontal cellSpacing: 5 - (grid width // 5)).
	self constraintsDo: [ :aLayoutConstraints |
		aLayoutConstraints horizontal matchParent.
		aLayoutConstraints vertical matchParent ].
	self padding: (BlInsets all: 5).
	self layout columnCount: grid width.