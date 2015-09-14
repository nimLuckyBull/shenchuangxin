#改程序是导入C文件中的函数，C文件为 Newadd.c
{.compile: "Newadd.c".}
proc hi*(name: cstring) {.importc.}
hi "from Nim"

proc Newadd*(a,b:cint): cint {.importc.}

echo Newadd(0,2)


#改程序在404的电脑上运行的结果不正确（？？？？？？）。  但是在我的电脑上和其他的Linux下运行会得到正确的结果。
