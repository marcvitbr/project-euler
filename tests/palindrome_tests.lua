describe("When testing the Palindrome generator", function()
    it("Should assert that 9009 is a palindrome", function()
        local palindrome = require("palindrome")
        local result = palindrome.is_palindrome(9009)
        assert.is_true(result)
    end)

    it("Should return 9009 as the largest palindrome made from the product of two 2-digit numbers", function()
        local palindrome = require("palindrome")
        local result = palindrome.find_largest_for_number_of_digits(2)

        assert.are.same(9009, result)
    end)

    it("Should return 906609 as the largest palindrome made from the product of two 3-digit numbers", function()
        local palindrome = require("palindrome")
        local result = palindrome.find_largest_for_number_of_digits(3)

        assert.are.same(906609, result)
    end)
end)