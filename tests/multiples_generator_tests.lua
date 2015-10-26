package.path = package.path..";../*.lua"
describe("When testing multiples generator module", function()
    it("Should return 2520 as the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder", function()
        local multiples_generator = require("../multiples_generator")
        local result = multiples_generator.find_smallest_without_remainder(1, 10)
        assert.are.same(2520, result)
    end)

    it("Should return 232792560 as the smallest number that can be divided by each of the numbers from 1 to 20 without any remainder", function()
        local multiples_generator = require("../multiples_generator")
        local result = multiples_generator.find_smallest_without_remainder(1, 20)
        assert.are.same(232792560, result)
    end)
end)
