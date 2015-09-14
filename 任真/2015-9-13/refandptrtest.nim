type
  intref = ref int
  intptr = ptr int

var
   var1=4
   intrefvar:intref
   intptrvar:intptr


intrefvar=var1
intptrvar= &(var1)
sizeof(intrefvar)
sizeof(intptrvar)
