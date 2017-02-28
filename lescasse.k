/ A solution to Eric Lescasse's Bridge Challenge (http://www.lescasse.com/Content/Quiz.aspx)

/ 52 cards, 13 cards per player, 4 players
pips:"SHDC" / S=Spades, H=Hearts, D=Diamonds, C=Clubs
crds:"AKQJX98765432"    / A=Ace, K=King, Q=Queen, J=Jack, X=10, 9=9, ...

/ Quiz 1 - Compute a Bridge random cards distribution
Dist:{4 13#-52?,/pips,/:\:crds}

/ Quiz 2 - Sort a Bridge random cards distribution
SortDist:{x@'>:'x}

/ Quiz 3 - Split the Bridge cards distribution
Split:{+{{-1_,/x}'((pips,'((*:'x)?pips)_(*:'|:'x)),\:\:" ")}'x}

/ Quiz 4 - Properly display the Bridge cards distribution
Display:{[dist]
    result:12 3#()
    result[0 1 2 3;1]:dist[;0]
    result[4 5 6 7;0]:dist[;1]
    result[4 5 6 7;2]:dist[;2]
    result[8 9 10 11;1]:dist[;3]
    :result
 }

/ Quiz 5 - Evaluate a Bridge cards distribution
Eval:{{+/4 3 2 1*+/'"AKQJ"=\:x}'{*:'|:'x}'x}

aaa:Dist[]
#aaa
#:'aaa
#:''aaa
aaa:SortDist aaa
bbb:Split aaa
Display bbb
