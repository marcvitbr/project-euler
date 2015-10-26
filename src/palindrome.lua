-- Solution to problem #4

local Palindrome = {}

local function round(val, decimal)
  if (decimal) then
    return math.floor( (val * 10^decimal) + 0.5) / (10^decimal)
  else
    return math.floor(val+0.5)
  end
end

function Palindrome.is_palindrome(number)
    local number_in_string = tostring(round(number))
    if number_in_string:len() % 2 > 0 then return false end

    local i = 1
    local j = number_in_string:len()

    while i < j do
        if number_in_string:sub(i,i) ~= number_in_string:sub(j,j) then
            return false
        end
        i = i + 1
        j = j - 1
    end

    return true
end

function Palindrome.find_largest_for_number_of_digits(digits)
    local max = 10^digits-1
    local product = 0
    local palindromes = {}

    for i=max, 1, -1 do
        for j=max, 1, -1 do
            product = i*j
            if Palindrome.is_palindrome(product) then
                table.insert(palindromes, round(product))
            end
        end
    end

    table.sort(palindromes)

    return palindromes[#palindromes]
end

return Palindrome