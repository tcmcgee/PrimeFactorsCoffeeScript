class PrimesView extends Backbone.View

  initialize: ->
  	@generator = new PrimesGenerator

  getTextInput: ->
  	'<h4>Enter a Number:</h4><input type="text" name="numInput" class="numInput" maxlength="10">'

  getOutputLabel: ->
  	'<h4> Primes: <h5 class="primesList"> </h5> </h4>'

  getPrimesList: (num) ->
    @generator.generatePrimes(num)

  getFormattedPrimesList: (primes) ->
    unformattedPrimes = JSON.stringify(primes)
    formattedPrimes = ""
    _.each unformattedPrimes, (unformattedCharacter) => 
      if (unformattedCharacter == '[' || unformattedCharacter == ']')

      else if (unformattedCharacter == ',')
        formattedPrimes += ", "
      else
        formattedPrimes += unformattedCharacter
    formattedPrimes
      


  updateOutputLabel: (input) ->
    primes = @getPrimesList(input.target.value)
    $(".primesList").html(@getFormattedPrimesList(primes))


  events: "keyup .numInput": "updateOutputLabel"

  render: ->
  	@$el.html(@getTextInput() + @getOutputLabel())
  	@
