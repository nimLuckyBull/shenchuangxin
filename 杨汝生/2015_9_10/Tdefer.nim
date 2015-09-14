proc main():void = 
  var f:File
  defer:close(f)
  #defer: 
    #var a = 6
    #echo a
  #defer:echo "mm" 

  except:
    echo "Exception"

  echo "ddddd"
  var s = "ddd"

  f = open("numbers1.txt")#,fmReadWrite)

  f.write "abc"                             
  f.write "def"

main()

#defer 语句后面可以跟语句.defer 没有异常捕获，要想捕获异常可以在defer后面，可能出现异常的语句前面使用except捕获异常。

discard """
if true:
  var f:File
  defer: close(f)

  except:
    echo "Exception"

  f = open("numbers1.txt")#,fmReadWrite)
  f.write "abc"                             
  f.write "def"
"""