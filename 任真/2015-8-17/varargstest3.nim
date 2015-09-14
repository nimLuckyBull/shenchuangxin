proc takeV[T](a: varargs[T]):seq[T]=
  result= @[]
  for i in 0..a.len-1:
     result.add(a[i])
   
   
echo takeV([123, 2, 1])           # takeV's T is "int", not "array of int"  


#proc echo*(x: varargs[expr, `$`]) = discard 
   
  
echo(@[1, 2, 3])  
# prints "@[1, 2, 3]" and not "123" 


discard """
proc echo*(x: varargs[expr, `$`]) {.magic: "Echo", tags: [WriteIOEffect],
  benign, sideEffect.}
  ## Writes and flushes the parameters to the standard output.     写并且刷新参数到标准输出
  ##
  ## Special built-in that takes a variable number of arguments. Each argument      特殊的内置接受一个可变数量的参数.每一个参数通过``$``被转换为一个字符串,因此
  ## is converted to a string via ``$``, so it works for user-defined               它为用户自定义的类型有一个重载的``$``操作符.
  ## types that have an overloaded ``$`` operator.
  ## It is roughly equivalent to ``writeln(stdout, x); flushFile(stdout)``, but     它大致等价于``writeln(stdout, x), flushFile(stdout)``,但是这也可
  ## available for the JavaScript target too.                                        用于JavaScript.
  ##
  ## Unlike other IO operations this is guaranteed to be thread-safe as              
  ## ``echo`` is very often used for debugging convenience. If you want to use      与其他IO操作不同的是``echo``这保证线程安全,因此``echo``常用于调试方便.
  ## ``echo`` inside a `proc without side effects
  ## <manual.html#nosideeffect-pragma>`_ you can use `debugEcho <#debugEcho>`_      如果你想在一个无副作用的过程中使用``echo``,你可以使用
  ## instead.                                                                        debugEcho <#debugEcho>

"""
