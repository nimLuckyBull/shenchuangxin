var
  myBool = true
  myCharacter = 'n'
  myString = "nim"
  myInteger = 42
  myFloat = 3.14
echo($myBool, ":", repr(myBool))
# --> true:true
echo($myCharacter, ":", repr(myCharacter))
# --> n:'n'
echo($myString, ":", repr(myString))
# --> nim:0x10fa8c050"nim"
echo($myInteger, ":", repr(myInteger))
# --> 42:42
echo($myFloat, ":", repr(myFloat))
# --> 3.1400000000000001e+00:3.1400000000000001e+00

discard """
myself output:
true:true
n:'n'
nim:0x7fe763685050"nim"
42:42
3.14:3.14

"""

discard """

proc repr*[T](x: T): string {.magic: "Repr", noSideEffect.}
  ## takes any Nim variable and returns its string representation. It
  ## works even for complex data graphs with cycles. This is a great
  ## debugging tool.
  ##接受任何nim变量并且返回它的字符串表示形式.它甚至作用于带有环的复杂数据图.这是一个很好的调试工具.

"""
