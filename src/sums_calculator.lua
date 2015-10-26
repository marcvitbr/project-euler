-- Solution to problem #6

local SumsCalculator = {}

function SumsCalculator.sum_of_squares_of(a_number)
    local sum = 0
    for i=1, a_number do
        sum = sum + i^2
    end
    return sum
end

function SumsCalculator.square_of_sums_of(a_number)
    local sum = 0
    for i=1, a_number do
        sum = sum + i
    end
    return sum^2
end

function SumsCalculator.diff_between_square_of_sums_and_sum_of_squares_of(a_number)
    local sum_of_squares = SumsCalculator.sum_of_squares_of(a_number)
    local square_of_sums = SumsCalculator.square_of_sums_of(a_number)

    return square_of_sums - sum_of_squares
end

return SumsCalculator