template `!=~./^&*-+:.` (a, b: expr): expr =
  # this definition exists in the System module
  not (a == b)
 

assert(5 !=~./^&*-+:. 6) # the compiler rewrites that to: assert(not (5 == 6))

#反引号重载运算符。

#ttemplate.nim(5, 10) Warning: will be parsed as unary operator; inconsistent spa
#cing is deprecated [Deprecated]
#ttemplate.nim(5, 12) Error: undeclared identifier: 'e'  如果含有e ，出错信息。


