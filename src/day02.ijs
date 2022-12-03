NB. --- Day 2: Rock Paper Scissors ---

NB. Encrypted strategy guide
NB. A X : Rock
NB. B Y : Paper
NB. C Z : Scissors
NB. First column : Opponent

NB. Scores
NB. Rock : 1
NB. Paper : 2
NB. Scissors : 3
NB. + Lost : 0, Draw : 3, Win : 6

(<;._2'pid cid ecl eyr ') -. ({'pid')
NB. cid ecl eyr

draws =: < ;._2 'A X_B Y_C Z_'
loss =: < ;._2 'B X_C Y_A Z_'
wins =: < ;._2 'C X_A Y_B Z_'

exampleinput =: readfile < '/Users/charles/git-repositories/advent-of-code-2022/datas/day02-example.input'
input =: readfile < '/Users/charles/git-repositories/advent-of-code-2022/datas/day02.input'

data =: <;._2 input

5 {. data

data -. loss NB. On peut enlever tous les 0 points

data -. (loss, wins)
draw_points =: 3 * # data -. (loss, wins)
win_points =: 6 * # data -. (loss, draws)

{: <;.3 'A Z'

plays =: < ;.3@{: ;._2 input

plays

rock_points =: 1* +/ plays e. {'X'
paper_points =: 2* +/ plays e. {'Y'
scissors_points =: 3* +/ plays e. {'Z'

NB. Part 1
draw_points + win_points + rock_points + paper_points + scissors_points

NB. Search better ways for Part 1 with help of others' solutions
+/ 1 + 'XYZ'&i. ;plays
