describe "PrimesView", ->
	view = new PrimesView

	beforeEach ->
		view = new PrimesView

	it "can get a text input box", ->
		expect(view.getTextInput()).toContain('input type="text"')
		expect(view.getTextInput()).toHaveClass('numInput')

	it "can get an output label", ->
		expect(view.getOutputLabel()).toHaveClass('primesList')

	it "can get the html with the input and label", ->
		expect(view.render().$el.html()).toContain('numInput')
		expect(view.render().$el.html()).toContain('primesList')

			