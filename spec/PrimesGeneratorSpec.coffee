describe "PrimesGenerator", ->
	generator = new PrimesGenerator

	it "can get the smallest prime factors of 4", ->
		expect(generator.generatePrimes(4)).toEqual([2,2])

	it "can get the smallest prime factors of 5", ->
		expect(generator.generatePrimes(5)).toEqual([5])

	it "can get the smallest prime factors of 6", ->
		expect(generator.generatePrimes(6)).toEqual([2,3])		

	it "can get the smallest prime factors of 7", ->
		expect(generator.generatePrimes(7)).toEqual([7])	

	it "can get the smallest prime factors of 9", ->
		expect(generator.generatePrimes(9)).toEqual([3,3])	

	it "can get the smallest prime factors of 15", ->
		expect(generator.generatePrimes(15)).toEqual([3,5])		

	it "can get the smallest prime factors of 32", ->
		expect(generator.generatePrimes(32)).toEqual([2,2,2,2,2])	
	it "can get the smallest prime factors of 50", ->
		expect(generator.generatePrimes(50)).toEqual([2,5,5])

	it "can get the smallest prime factors of 100", ->
		expect(generator.generatePrimes(100)).toEqual([2,2,5,5])

	it "can get the smallest prime factors of 101", ->
		expect(generator.generatePrimes(101)).toEqual([101])

	it "can get the smallest prime factors of 105", ->
		expect(generator.generatePrimes(105)).toEqual([3,5,7])

	it "can get the smallest prime factors of 1", ->
		expect(generator.generatePrimes(1)).toEqual([])

	it "can get the smallest prime factors of 0", ->
		expect(generator.generatePrimes(0)).toEqual([])

	it "can get the smallest prime factors of 1235", ->
		expect(generator.generatePrimes(1235)).toEqual([5,13,19])