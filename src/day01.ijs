NB. sed 's/^$/0/g' day01.input > day01.input-fixed

input =: readfile < '/Users/charles/git-repositories/advent-of-code-2022/datas/day01.input-fixed'

split_lines =: ;. _2
parse_numbers =: ".

{: /:~ +/ ;. _1 (0, parse_numbers split_lines input)

