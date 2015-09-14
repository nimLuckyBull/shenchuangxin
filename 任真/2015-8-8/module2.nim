# Module B
proc p*(x: module1.T1): module1.T1 =
  # this works because the compiler has already
  # added T1 to A's interface symbol table
  result = x + 1
  
import module1  # A is not parsed here! Only the already known symbols
          # of A are imported.
discard """
proc p*(x: module1.T1): module1.T1 =
  # this works because the compiler has already
  # added T1 to A's interface symbol table
  result = x + 1
  
echo "module2"
"""



