class PrimesGenerator

  generatePrimes: (number) ->
    primesList = []
    num = 2
    while number > 1
      if (number % num == 0)
        number = number / num
        primesList.push(num)
      else
        num = num + 1

    return primesList