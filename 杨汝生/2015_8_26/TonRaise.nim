var e : ref Exception

new(e)
e.msg = "异常"

proc ac(e:ref Exception): bool =
    echo "why"
    result = false
    #result = true                           #如果返回true，则表明异常没有被处理，后面的except还是会捕捉该异常。如果返回false，表明异常已经处理，except捕捉不到异常。


    #echo (0 div 0)                           #如果过程里有异常，则会出现奇怪的现象。
    #raise e


try :
     onRaise(ac)                             #该语句后面如果出现异常，则会进入ac() .
     var f:File
     f = open("dd")
     #var a = (0 div 0)
     #echo (0 div 0)
     echo "follow exception"


except IOError:
     echo "2"
except:
     echo "3"

discard """
proc onRaise*(action: proc(e: ref Exception): bool{.closure.}) =
      ## can be used in a ``try`` statement to setup a Lisp-like
      ## `condition system`:idx:\: This prevents the 'raise' statement to
      ## raise an exception but instead calls ``action``.
      ## If ``action`` returns false, the exception has been handled and
      ## does not propagate further through the call stack.
      if not isNil(excHandler):
        excHandler.hasRaiseAction = true
        excHandler.raiseAction = action
"""
