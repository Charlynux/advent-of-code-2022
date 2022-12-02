NB. sed 's/^$/0/g' day01.input > day01.input-fixed
exampleinput =: readfile < '/Users/charles/git-repositories/advent-of-code-2022/datas/day01-example.input-fixed'
input =: readfile < '/Users/charles/git-repositories/advent-of-code-2022/datas/day01.input-fixed'

split_lines =: ;. _2
parse_numbers =: ".

NB. Part 1
{: /:~ +/ ;. _1 (0, parse_numbers split_lines input)

NB. Part 2
+/ _3 {. /:~ +/ ;. _1 (0, parse_numbers split_lines input)


NB. Analyse de solutions
NB. https://www.reddit.com/r/adventofcode/comments/z9ezjb/2022_day_1_solutions/iyhru9e/?context=3
parse =: <@:(".@>);._2 @ (,&a:) @ (<;._2) @ toJ @ fread
part1 =: [: >./ +/@>
part2 =: [: +/@:({~ 3&{.@\:) +/@>

NB. >./ max
NB. /:~ sort asc 
NB. \:~ sort desc



