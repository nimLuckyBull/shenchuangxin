type Matrix[T, Rows, Columns] = object
  

proc `[]`(m: Matrix, row, col: int): Matrix.T =
  m.data[col * high(Matrix.Columns) + row]
 
 
#var var1 = Matrix[int,int,int](2,3,4)

#var1 = ((1),(2),(3))