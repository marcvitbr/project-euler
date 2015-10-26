describe("When adding Fibonacci even numbers", function()
    it("Should be 2 when the sequence don't exceed 3", function()
        local fibonacci_calculator = require("fibonacci_calculator")

        local result = fibonacci_calculator.sum_even_sequence_until(4000000)

        assert.are.equal(4613732, result)
    end)
end)