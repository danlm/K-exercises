/ Solution
j42013:{[time;chores]
    sorted:chores@<chores
    :(~time<*sorted)*1+*|&~time<+\sorted
 }


/ Test data
a1T:6
a1C:3 6 3

a2T:6
a2C:5 4 3 2 1

/ Test Execution
j42013[a1T;a1C]    / 2
j42013[a2T;a2C]    / 3
