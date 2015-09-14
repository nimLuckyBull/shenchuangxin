#import module1b #import moduleb如果放在该位置就会出错，因为b模块要用到a模块中的T1  
type
  T1* = int  # Module A exports the type ``T1``
import module1b     # moduleb放在该位置就不会出错了
proc main() =
  var i = p(3) # works because B has been parsed completely here
  echo i
main()