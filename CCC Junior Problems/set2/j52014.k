/ Solution
j52014:{
    c:x,'y
    :("good";"bad")@|/(#c)=(|:'c)?c
 }

/ Test data
a1a:`Ada`Alan`Grace`John
a1b:`John`Grace`Alan`Ada

a2a:`Rich`Graeme`Michelle`Sandy`Vlado`Ron`Jacob
a2b:`Ron`Vlado`Sandy`Michelle`Rich`Graeme`Jacob

/ Test Execution
j52014[a1a;a1b]    / "good"
j52014[a2a;a2b]    / "bad"