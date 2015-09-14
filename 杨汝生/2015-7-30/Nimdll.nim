const dllname = "tdll"        #linux 下 得有路径， 例如在同一个目录下为     ./libtdll.so
#const dllname = "tdll.dll"
#var dllname = "tdll.dll"      #错误

proc summer*(x, y: float): float {.cdecl, importc, dynlib: dllname.}
#proc summer*(x, y: float): float {.cdecl, importc, dynlib: "tdll.dll".}

echo summer (1.0,2.0)
echo dllname


#改程序用来调用动态库。

#在404电脑上，程序异常中止，没有可用的堆栈回溯。  在我的电脑和Linux下可以运行。