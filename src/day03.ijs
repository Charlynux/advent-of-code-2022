readfile =: 1!:1
writefile =: 1!:2

_6 <\ i.12

compartiment_size =: -@-:@#

compartiment_size 'vJrwpWtwJgWrhcsFMMfFFhFp' NB. _12

_12 <\ 'vJrwpWtwJgWrhcsFMMfFFhFp'
NB. Coupe en deux parties de 12

(<\~ compartiment_size) 'vJrwpWtwJgWrhcsFMMfFFhFp'

'vJrwpWtwJgWr' #~ 'vJrwpWtwJgWr' e. 'hcsFMMfFFhFp'
NB. p
'hcsFMMfFFhFp' e.~ 'vJrwpWtwJgWr'
'vJrwpWtwJgWr' e. 'hcsFMMfFFhFp'

e./> 'vJrwpWtwJgWr' ; 'hcsFMMfFFhFp'

({. #~ e./)> 'vJrwpWtwJgWr' ; 'hcsFMMfFFhFp'
NB. Avec l'aide de dissect
NB. fork => (head x) copy (member x)

~. ({. #~ e./)> (<\~ compartiment_size) 'jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL'
NB. ~. UniqueItems

priority =: 1 + 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'&i.

priority 'p' NB. 16

split =: (<\~ compartiment_size)

split 'vJrwpWtwJgWrhcsFMMfFFhFp'

common_letter =: ~.@(;@{. #~ (;@{. e. ;@{:))

~.@({. #~ e./) 'ab' 'bc'

common_letter 'ab' ;  'bc'

process_line =: priority@common_letter@split

process_line 'jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL'

priority ~. ({. #~ e./)> (<\~ compartiment_size) 'jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL'

exampleinput =: readfile < '/Users/charles/git-repositories/advent-of-code-2022/datas/day03-example.input'
input =: readfile < '/Users/charles/git-repositories/advent-of-code-2022/datas/day03.input'

+/ process_line ;._2 exampleinput
+/ process_line ;._2 input

