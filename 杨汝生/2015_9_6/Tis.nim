type
  Table[Key, Value] = object
    keys: seq[Key]
    values: seq[Value]
    when (not (Key is string)): # nil value for strings used for optimization
      deletedKeys: seq[bool]
    #when ((Key is not string)): 
      #deletedKeys: seq[bool]
    #when true:
      #deletedKeys:seq[bool]

var 
  t1:Table[string,int]
  t2:Table[float,int]


t1=Table[string,int](keys: @["red","green"],values: @[1,2,3],deletedKeys: @[false,false])
echo t1

var t3=Table[string,int](keys: @["red","green"],values: @[1,2,3],deletedKeys: @[false,false])
echo t3

var t4=Table[float,int](keys: @[1.1,2.2],values: @[1,2,3])
echo t4



when not (int is string) :             #(int is not string)
  echo "int is not string"
  
when not (string is string) :             #(int is not string)
  echo "string is string"


var var2:Table[int,int]

echo var2
var2.deletedKeys = @[false]
echo var2


#无论 type声明里 when语句条件是否满足， 它的类型都是 (keys: @[], values: @[], deletedKeys: @[])， 那么when这里的作用？？？？？
#Error: type mismatch: got (seq[int]) but expected 'seq[bool]'


