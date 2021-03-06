describe("When testing the 1000 numbers series module", function()
    it("Should return { 9, 9, 8, 9 } as the four adjacent digits that have the greatest product", function()
        local a_1000_numbers_series = require("a_1000_numbers_series")
        local result = a_1000_numbers_series.adjacents_that_have_greatest_product_in_range_of(4)
        assert.are.same({ 9, 9, 8, 9 }, result)
    end)

    it("Should return { 9, 9, 8, 9 } as the four adjacent digits that have the greatest product", function()
        local a_1000_numbers_series = require("a_1000_numbers_series")
        local result = a_1000_numbers_series.adjacents_that_have_greatest_product_in_range_of(13)
        assert.are.same({ 5, 5, 7, 6, 6, 8, 9, 6, 6, 4, 8, 9, 5 }, result)
    end)

    it("Should return 23514624000 as the greatest product of thirteen adjacent digits", function()
        local a_1000_numbers_series = require("a_1000_numbers_series")
        local result = a_1000_numbers_series.greatest_product_of_adjacents_in_range_of(13)
        assert.are.same(23514624000, result)
    end)
end)