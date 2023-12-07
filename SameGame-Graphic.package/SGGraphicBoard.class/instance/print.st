accessing
print
	self layout:
		(BlGridLayout horizontal cellSpacing: 5 - (self grid width // 5)).
	self constraintsDo: [ :aLayoutConstraints |
		aLayoutConstraints horizontal matchParent.
		aLayoutConstraints vertical matchParent ].
	self padding: (BlInsets all: 5).
	self layout columnCount: self grid width.
	self grid do: [ :aCase |
		self addChild: aCase ]