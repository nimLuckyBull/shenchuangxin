##子界类型的类型只能是序数类型(整形,字符型,布尔类型,枚举类型)(以及其子类型)

type
  dir=enum
    south=4,east=5,west=6,north
  a=array[0..5,int]
  subrange=range[0..0]
  substring=range['A'..'a']
  substring2=range['A'..'H']
  subenum=range[south..north]
  subbool=range[true..true]


var 
  #s:subrange=2
  s2:substring='B'
  s3:substring2='B'
  seq= @[1,2,3]
 
  
  
for i in 0..seq.len-1:
  echo seq[i]
let 
   x=seq[0]
   y=seq[1]

#type
  #subseq=range[x..y]

