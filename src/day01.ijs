NB. sed 's/^$/0/g' day01.input > day01.input-fixed
exampleinput =: readfile < '/Users/charles/git-repositories/advent-of-code-2022/datas/day01-example.input-fixed'
input =: readfile < '/Users/charles/git-repositories/advent-of-code-2022/datas/day01.input-fixed'

split_lines =: ;. _2
parse_numbers =: ".

NB. Part 1
{: /:~ +/ ;. _1 (0, parse_numbers split_lines input)

NB. Part 2
+/ _3 {. /:~ +/ ;. _1 (0, parse_numbers split_lines input)

