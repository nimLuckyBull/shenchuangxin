type
  subtest=range[-1..1]

var 
  sub1:subtest
  y:int
  sub2:subtest

sub2=(y mod 2)
case (sub2*2):
of -2: echo (-2)
of 0: echo 0
of 2:echo 2

discard """
var 
  n:int
  m=2*n
  z:int=(m mod 2)*2

case z
of -2: echo (-2) 
of 0: echo (0)
of 2: echo (2)
"""


