
type
  Pair[T,U] = object
    first:T
    second:U

method getFirst*[T,U](pair:Pair[T,U]): T = 
  result = pair.first

method getSecond*[T,U](pair:Pair[T,U]): U =
  result = pair.second

method setFirst*[T,U](pair:var Pair[T,U];value:T) = 
  pair.first = value

method setSecond*[T,U](pair:var Pair[T,U];value:U) = 
  pair.second = value
  
var 
  var1:Pair[string,int]


var1.setFirst("yrs")
var1.setSecond(22)
echo var1.getFirst()
echo var1.getSecond()