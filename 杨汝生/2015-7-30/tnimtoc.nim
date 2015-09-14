proc absy(x: int): int {.importc: "abs", header: "<math.h>".}         #两种不同的导入C标准库函数。第一种可以改变过程名，第二中就要对应于C 中的函数名。
echo absy(-1)
proc abs(x: int): int {.header: "<math.h>",varargs.} 
echo abs(-1)


proc printf(formatstr: cstring) {.header: "<stdio.h>", varargs.}
printf("%s %d\n", "foo", 5)
