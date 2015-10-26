-- Solution to problem #3

local PrimeFactors = {}

local prime_numbers = require("prime_numbers")
local len = #prime_numbers

function PrimeFactors.is_prime(a_number)
	for i=1, len do
		if prime_numbers[i] == a_number then
			return true
		end
	end
	return false
end

function PrimeFactors.get_prime_factors(a_number)
	local first = 1
	local factors = {}
	local divider = prime_numbers[first]
	local found_all_factors = false

	local i = first
	repeat
		if a_number % divider == 0 then
			table.insert(factors, divider)
			a_number = a_number / divider

			if PrimeFactors.is_prime(a_number) then
				table.insert(factors, a_number)
				found_all_factors = true
			end
		else
			i = i + 1
			divider = prime_numbers[i]
		end
	until found_all_factors

	return factors
end

function PrimeFactors.get_larger_prime_factor(a_number)
	local prime_factors = PrimeFactors.get_prime_factors(a_number)
	return prime_factors[#prime_factors]
end

return PrimeFactors