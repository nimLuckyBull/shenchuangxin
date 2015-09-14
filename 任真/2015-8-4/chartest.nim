var 
  ch:char='a'
  i:int=56
  f:float=15.6
echo ord(ch)
echo chr(i)
echo ($f)

var ch2=(char)i
echo ch2
discard """
97
8
15.6
"""
