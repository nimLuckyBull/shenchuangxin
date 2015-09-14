proc fizzBuzz(x, y: int) =
  for i in x .. y:
    if i mod 15 == 0:
      echo("FizzBuzz")
    elif i mod 3 == 0:
      echo("Fizz")
    elif i mod 5 == 0:
      echo("Buzz")
    else:
      echo(i)
