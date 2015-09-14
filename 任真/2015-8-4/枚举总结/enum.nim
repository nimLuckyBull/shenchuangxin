discard """
比较运算符可以用于枚举类型。
为了更好的与其他编程语言的接口，枚举类型的域可以指定一个明确的序数值。然而，序数值必须是升序排列。一个域的序数值没有明确给出会被赋值为前一个域序数值+1。
一个明确的枚举类型可以不连续,然而，它们不再是一个序数类型，因此不可能使用这些枚举作为一个数组的索引类型。过程inc，dec，succ和pred对于它们是不可用的。
对于枚举编译器支持内置的字符串解析操作（注：stringify()用于从一个对象解析出字符串）。stringify()解析的结果可以通过显示的给出字符串值使用控制：

"""

type
  Direction = enum
    north, east, south, west


ord(north) == 0
ord(east) == 1
ord(south) == 2
ord(west) == 3

##因此，north < east < south < west。比较运算符可以用于枚举类型。


type
  TokenType = enum
    a = 2, b = 4, c = 89 # holes are valid
##不连续的枚举不再是序数类型,对于序数的操作它不可用.



type
  MyEnum = enum
    valueA = (0, "my value A"),
    valueB = "value B",
    valueC = 2,
    valueD = (3, "abc")

##可以通过一个元组同时指定一个域的序数值以及它的字符串值。也可以仅指定两者中的其中一个。


type
  MyEnum {.pure.} = enum
    valueA, valueB, valueC, valueD

echo valueA                                   # error: Unknown identifier
echo MyEnum.valueA                            # works

一个枚举可以标有pure编译指示，以至于它的域不被添加到当前的作用域中，所以它们总是需要通过MyEnum.value访问：

