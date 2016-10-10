/ Solution
j32013:{[year]
    possible:(1+year)_ !10001
    tester:{4=#?10\:x}
    :possible@1#&tester'possible
 }

/ Test data
a1:1987
a2:999

/ Test Execution
j32013 a1    / 2013
j32013 a2    / 1023