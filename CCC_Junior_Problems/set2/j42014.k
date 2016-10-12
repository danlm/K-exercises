/ Solution
j42014:{[friends;rounds]    / j42014
    full:1+!friends   / generate index list of friends
    :drop[rounds;full]  / recursive helper function
 }

drop:{[i;list]  / drop
    if[0=#i;:list]
    index:1#i
    i:1_ i
    list:list@&(#list)#((index-1)#1),0
    :drop[i;list]
 }

/ Test data
a1a:10
a1b:2 3

/ Test Execution
j42014[a1a;a1b]    / 1 3 7 9