tests
testClickAndCaseNothingAppend

| board case caseAfterClick resGrid |

board := SBoardElement new board: GameTest new gridForTest .
case := board children second.
resGrid := board board grid asArray.
"fonctionne jusque ici"

"case seul donc pas de suppression"
case case click.
caseAfterClick:= board children second.
self assert: resGrid equals: board board grid asArray.