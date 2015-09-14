var x:int

case (x and 3) + 7
of 7: echo "A"
of 8: echo "B"
of 9: echo "C"
of 10: echo "D"

case (x mod 3) + 7
of 6: echo "6"
of 5: echo "5"
of 7: echo "A"
of 8: echo "B"
of 9: echo "C"
#of 10: echo "D"
#else:discard

#const y = 4
var y=0
case (y mod 2)
of -1:echo (-1) 
of 0: echo 0
of 1: echo 1
#else: echo "else"
discard """ 
of 2: echo 2
of 4: echo 4
of 6: echo 6
else: echo "hello"
"""
#node: no "else" required as (x and 3) + 7 has the type:range[7..10]

discard """
for i in 1..10:
  echo i %% 3   

for i in 1..10:
  echo i mod 3

"""
echo ((-5) mod 3)
echo ((-1) and 3)
