#import module1b #import moduleb������ڸ�λ�þͻ������Ϊbģ��Ҫ�õ�aģ���е�T1  
type
  T1* = int  # Module A exports the type ``T1``
import module1b     # moduleb���ڸ�λ�þͲ��������
proc main() =
  var i = p(3) # works because B has been parsed completely here
  echo i
main()