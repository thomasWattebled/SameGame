tests
testClickAnd1CaseDisappear

| board case caseAfterClick |

board := SBoardElement new board: SameGameAbstacctTest new gridForTest.
case := board children second.
self assert: case case isYellowCase.
case click.
caseAfterClick:= board children second.
self assert: caseAfterClick case isGreenCase.