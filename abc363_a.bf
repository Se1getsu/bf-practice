https://atcoder dot jp/contests/abc363/submissions/56214427

a#b = a＋b
a;b = aーb

c in 100 (入力の百の位)
b in 10
a in 1
D = a#b
E = 10;b
F = 10;a
X out 100 = D ? 0 : 1
Y out 10  = (D ? E : 0);(a ? 1 : 0)
Z out 1   = a ? F : 0

>>,>,[----------[++++++++++<[<+>-]<<+>>>[<+>-]]],[----------[++++++++++<<[-]>[<+>-]>[<+>-]]]<<<
*0|1 0|b#48 a#48 0 0 0 0 0 0 0 0
[>>>++++++++[<<------>>-]<<<-]>>>
0 b a#48 *0 0 0 0 0 0 0 0
++++++++[<------>-]>>
_ b a 0 0 *0 0 0 0 0 0
++[>+++++>+++++<<-]<<<
_ b *a 0 0 0 10 10 0 0 0
[>>+>+>>-<<<<<-]<
_ *b 0 0 a a 10 F 0 0 0
[>>+>>+>-<<<<<-]>>>>
_ 0 0 b a *D E F 0 0 0
>>>+<<<[>[>>>+<<<-]>>-<<<[-]]<
_ 0 0 b *a 0 _ F X (D ? E : 0) 0
[>>>>>-<<[>>>+<<<-]<<<[-]]>>>
_ 0 0 b 0 0 _ *_ X Y Z
[-]++++++++++++>
_ 0 0 b 0 0 _ 12 *X Y Z
[
    <[>++++>++++>++++<<<-]>.>.>.>>>>
    _ 0 0 b 0 0 _ 0 X#48 Y#48 *Z#48 (終了)
]>
_ 0 0 b 0 0 _ 12 X=0 *Y Z
[
    <<[>>++++>++++<<<-]>>.>.>.>>>
    _ 0 0 b 0 0 _ 0 X=0 Y#48 *Z#48 (終了)
]<<
_ 0 0 b 0 0 _ *12 X=0 Y=0 *Z
[
    [>>>++++<<<-]>>>.>.>.
    _ 0 0 b 0 0 _ 0 X=0 Y=0 *Z#48 (終了)
]>
++++++++++.