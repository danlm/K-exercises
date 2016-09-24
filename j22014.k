/ Solution
j22014:{[votes]
    s:(+/"A"='votes),+/"B"='votes
    :("Tie";"A";"B")@(~=/s)*1+*>s
 }

/ Test data
a1:"ABBABB"
a2:"ABBABA"

/ Test Execution
j22014 a1    / B
j22014 a2    / Tie
