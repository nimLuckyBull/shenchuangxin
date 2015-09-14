var e : ref Exception

new(e)
e.msg = "异常"

proc ac(e:ref Exception): bool =
    echo "why"
    raise e
    #return true

try :
     #onRaise(ac)
     echo "don....."

     var f:File
     f = open("dd")
    
    
     
except:
   
     echo "2"
     #raise e

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
