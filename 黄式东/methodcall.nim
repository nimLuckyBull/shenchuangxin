import strutils
echo("abc".len) # is the same as echo(len("abc"))
echo("abc".toUpper())  #toUpper()过程来至于strutils模块
echo({'a', 'b', 'c'}.card)
stdout.writeln("Hallo") 


stdout.writeln("Give a list of numbers (separated by spaces): ")
stdout.write(stdin.readLine.split.map(parseInt).max.`$`)  #请注意max后面的这个`$`符号
stdout.writeln(" is the maximum!")