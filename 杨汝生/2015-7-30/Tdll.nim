proc summer*(x, y: float): float {.exportc, dynlib.} =
   result = x + y


#改程序用于生成动态库。编译命令为 nim c --app:lib Tdll.nim 。在Windows下会生成tdll.dll，linux下生成 libTdll.so。