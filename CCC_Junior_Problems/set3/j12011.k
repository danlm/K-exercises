/ Solution
j12011:{[antenna;eyes]
    possible:()
    if[(antenna>2)&(eyes<5);possible,:1]
    if[(antenna<7)&(eyes>1);possible,:2]
    if[(antenna<3)&(eyes<4);possible,:3]
    if[0=#possible;possible,:0]
    :(`None`TroyMartian`VladSaturnian`GraemeMercurian)@possible
 }

/ Test data
a1a:4
a1b:5

a2a:2
a2b:3

a3a:8
a3b:6

/ Test Execution
j12011[a1a;a1b]    / `VladSaturnian
j12011[a2a;a2b]    / `VladSaturnian`GraemeMercurian
j12011[a3a;a3b]    / `None