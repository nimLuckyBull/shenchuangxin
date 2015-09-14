# read the first two lines of a text file that should contain numbers
# and tries to add them

import strutils

var
  f: File
if open(f, "test.txt"):                                     #注意这是if语句。
  try:
    let a = readLine(f)
    let b = readLine(f)
    echo "sum: ", parseInt(a) + parseInt(b)
  except OverflowError:
    echo "overflow!"
  except ValueError:
    echo "could not convert string to integer"
  except IOError:
    echo "IO error!"
  except:
    echo "Unknown exception!"
    # reraise the unknown exception:
    raise
  finally:
    close(f)