-- Solution to problem #2

local FibonacciCalculator = {}

function FibonacciCalculator.sum_even_sequence_until(number)
    local sequence = { 1, 2 }
    local sum = 0

    local lastSequence = 0
    while lastSequence < number do
        local i = #sequence
        table.insert(sequence, sequence[i] + sequence[i-1])
        lastSequence = sequence[#sequence]
    end

    for i=1, #sequence - 1 do
        if sequence[i] % 2 == 0 then
            sum = sum + sequence[i]
        end
    end

    return sum
end

return FibonacciCalculator