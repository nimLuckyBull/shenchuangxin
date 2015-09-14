var
  x*, y: int
type
  arraynew = array[0..3,int]
 
type
  Seqnim =seq[0..2]  #此处有问题？？？

var seq2 = @[1,2,3]

var seq3 = @[1,4,9]
var seq4 = @[1,2,3]

var seqtest,seqtest2,seqtest3:Seqnim

seqtest = cast[Seqnim](seq2)
seqtest3 = cast[Seqnim](seq4)
seqtest2 = cast[Seqnim](seq3)
#seqtest= @[0,1,2]
echo seqtest.len
echo seqtest[1]
echo len(seqtest)


 
proc `*` *(a, b: Seqnim): Seqnim =
  # allocate a new sequence:
  #newSeq(result, len(a))
  # multiply two int sequences:
  for i in 0..len(a)-1: result[i] = a[i] * b[i]
  #result = a
  
echo `*`(seqtest,seqtest)
discard """
when isMainModule:   #如果这个模块作为主文件被编译，那么这个常数就为真   
  # test the new ``*`` operator for sequences:
  #assert(@[1, 2, 3] * @[1, 2, 3] == @[1, 4, 9])
  assert(seqtest * seqtest3 == seqtest2)
  #echo (seqtest * seqtest)
  echo "d"
"""