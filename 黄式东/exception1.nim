#var
#  e:ref OSError
#new(e)
#e.msg="the request to the OS failed"
#raise e


#raise newException(OSError,"another exception")


var
  f:File
if open(f,"number.txt"):
  try:
    let a = readLine(f)
    let b = readLine(f)
    echo "sum:",$(parseInt(a) + parseInt(b)) #��������Ҳ���parseInt��������Ҫ����һ��ģ��
  except OverflowError:
    echo "overflow"
  except ValueError:
    echo "could not convert tring to integer"
  except IOError:
    echo "IO error!"
  except:
    echo "Unknow exception"
    raise
  finally:
    close(f)