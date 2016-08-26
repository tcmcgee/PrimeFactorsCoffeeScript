class PrimesView extends Backbone.View

  initialize: ->

  getTextInput: ->
  	'<h6>Enter a Number:</h6><input type="text" name="numInput" class="numInput">'

  getOutputLabel: ->
  	'<h6> Primes: <h6 class="primesList"> </h6> </h6>'

  render: ->
  	@$el.html(@getTextInput() + @getOutputLabel())
  	@
