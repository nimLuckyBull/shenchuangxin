
try:
  var number = open("G:name.txt")
except Exception:
  echo "I/O error: " & getCurrentExceptionMsg()
#except:                                                      
  #echo "I/O error: " & getCurrentExceptionMsg()
  
#捕获所有异常的两种方式： 1，except Exception:     2，except: