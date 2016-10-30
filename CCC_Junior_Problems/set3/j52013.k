/ Solution
j52013:{[team;stats]
    all:(1+!4)@comb[4;2]
    points:+/scoring'stats
    remaining:all@&(#stats)=(stats[;0],'stats[;1])?all
    future:possib'remaining
    / {'x}"test"
    scenarios:points+/:,/permute[#future;future]
    scenarios:scenarios@&1=+/'scenarios='scenarios[;team-1]
    :+/(team-1)=*+>:'scenarios
 }

comb:{[n;k]
    if[n~k;:,!k]
    $[1~k;:,:'!n;:comb[n-1;k],comb[n-1;k-1],\:,n-1]
 }

scoring:{[game]
    tally:4#0    
    $[game[3]<game[2];tally[game[0]-1]:3;game[3]>game[2];tally[game[1]-1]:3;game[3]=game[2];tally[game[0 1]-1]:1]
    :tally
 }

possib:{[match]
    ret:3 4#0
    ret[0;*match-1]+:3
    ret[1;*|match-1]+:3
    ret[2;match-1]+:1
    :ret
 }

permute:{[i;list]
    $[2=i;:list[0]+\:/:list[1];:list[0]+\:/:,/permute[i-1;1_ list]]
 }

/ Test data
a1a:3
a1b:(1 3 7 5;3 4 0 8;2 4 2 2)

a2a:3
a2b:(1 3 5 7;3 4 8 0;2 4 2 2;1 2 5 5)

/ Test Execution
j52013[a1a;a1b]    / 0
j52013[a2a;a2b]    / 9
j52013[3;(,1 2 0 0)]    / 58
