type
  myobject = object
     name:string
     age:int

var var1:myobject

var1=myobject(name:"",age:0)

echo var1

#SIGSEGV: Illegal storage access. (Attempt to read from nil?)
#版本11.2中会出现错误
