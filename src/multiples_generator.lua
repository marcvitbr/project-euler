-- Solution to problem #5

local MultiplesGenerator = {}

function MultiplesGenerator.find_smallest_without_remainder(from, to)
    local multiple = to
    local found = false
    
    while found == false do
        found = true
        for i=from, to do
            if multiple % i > 0 then
                found = false
                multiple = multiple + 1
                break
            end
        end
    end

    return multiple
end

return MultiplesGenerator