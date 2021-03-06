-- package.path = package.path..";../*.lua"
describe("When testing the prime factors module", function()
	it("Should assert that 2, 3, 5, 7 and 13 are primes", function()
		local prime_factors = require("../prime_factors")
		assert.is_true(prime_factors.is_prime(2))
		assert.is_true(prime_factors.is_prime(3))
		assert.is_true(prime_factors.is_prime(5))
		assert.is_true(prime_factors.is_prime(7))
		assert.is_true(prime_factors.is_prime(13))
	end)

	it("Should return {5, 7, 13, 29} as prime factors for 13195", function()
		local prime_factors = require("../prime_factors")
		local result = prime_factors.get_prime_factors(13195)
		assert.are.same({5, 7, 13, 29}, result)
	end)

	it("Should return {2, 2, 3} as prime factors for 12", function()
		local prime_factors = require("../prime_factors")
		local result = prime_factors.get_prime_factors(12)
		assert.are.same({2, 2, 3}, result)
	end)

	it("Should return {3, 7, 7} as prime factors for 147", function()
		local prime_factors = require("../prime_factors")
		local result = prime_factors.get_prime_factors(147)
		assert.are.same({3, 7, 7}, result)
	end)

	it("Should return 7 as LARGER prime factor of 147", function()
		local prime_factors = require("../prime_factors")
		local result = prime_factors.get_larger_prime_factor(147)
		assert.are.same(7, result)
	end)

	it("Should return 6857 as LARGER prime factor of 600851475143", function()
		local prime_factors = require("../prime_factors")
		local result = prime_factors.get_larger_prime_factor(600851475143)
		assert.are.same(6857, result)
	end)
end)