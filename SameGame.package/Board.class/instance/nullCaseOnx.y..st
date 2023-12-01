as yet unclassified
nullCaseOnx: x y: y
	(grid atColumn:x atRow: y put: NullCase new).
	"hitList contains the cases that became Null after being hit"
	hitList add:(x@y).