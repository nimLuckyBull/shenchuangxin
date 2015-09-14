
type
  mytype = (int and string)                #  !string   error

  
proc test(m:mytype) = 
  echo m

#test("33")       #error
#test(22)         #error

