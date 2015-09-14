import strutils

var userList = ["aa","bb","cc","dd"]
var 
  username = ""
  userindex = ""
  inputindexS = ""
  inputindex:int
  inputname = ""
  nameindex :int
  
try:
  echo "请输入要查询的用户名编号："
  inputindexS = readLine(stdin)
  inputindex = parseInt(inputindexS)
  username = userList[inputindex]
  
  echo "请输入要查询的用户名："
  inputname = readLine(stdin)
  if(inputname in userList):
    for i in 0..len(userList):
      if userList[i] == inputname:
        nameindex = i
        break 
  else:
    raise newException(ValueError,inputname & " not in userList")

  echo "您输入的编号为:",inputindex," 的用户名为：",username
  echo "你输入的用户名为：",inputname," 的编号为： ",nameindex

except IndexError:
  echo "this index is error,please input true index!"

except ValueError:
  echo "invalid integer: ",inputindexS," [ValueError]"