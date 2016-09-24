/ Solution
j12012:{("None";"$100";"$270";"$500")@+/(y-x)>0 20 30}

/ Test data
a1a:40
a1b:39

a2a:100
a2b:131

a3a:100
a3b:120

/ Test Execution
j12012[a1a;a1b]    / None
j12012[a2a;a2b]    / $500
j12012[a3a;a3b]    / $100
