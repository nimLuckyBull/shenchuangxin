import times,encodings
#echo cpuTime() 
var
  time1,time2,time3:float
  str = "杨汝生"

time1 = cpuTime()

var con = open("GB2312","UTF-8")
for i in 0..100000:
  discard convert(con,str)
con.close()
time2 = cpuTime()


for i in 0..100000:
  discard convert(str,"GB2312","UTF-8")

time3 = cpuTime()

echo time2 - time1
echo time3 - time2