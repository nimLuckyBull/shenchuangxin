import strutils
echo("abc".len) # is the same as echo(len("abc"))
echo("abc".toUpper())  #toUpper()����������strutilsģ��
echo({'a', 'b', 'c'}.card)
stdout.writeln("Hallo") 


stdout.writeln("Give a list of numbers (separated by spaces): ")
stdout.write(stdin.readLine.split.map(parseInt).max.`$`)  #��ע��max��������`$`����
stdout.writeln(" is the maximum!")