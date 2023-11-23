tests
testClickAndOneColumnDisappear

| board case caseAfterClick |

board := SBoardElement new board: SameGameAbstacctTest new gridForTest.
case := board children at:3.
self assert: case case isRedCase.
"fonctionne jusque ici"

case click.
caseAfterClick:= board children at:3.
self assert: caseAfterClick case isYellowCase.
self assert: (board children at:5) case isNullCase.
