discard """
proc main():void = 
  defer: close(f)
  except:
    echo "Exception"
  var f = open("numbers.txt")
                               #Top level defer statements are not supported since it's unclear what such a statement should refer to
  f.write "abc"                               #也就是defer 不能用在程序的顶层。
  f.write "def"
  
main()
"""

var f = open("numbers.txt")
try:
  f.write "abc"
  f.write "def"
finally:
  close(f)
  
#defer语句没有捕获异常的功能，要想捕获异常，except 语句要添加到在defer 语句后面，可能发生异常语句的前面。