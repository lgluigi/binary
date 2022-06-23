---@diagnostic disable-next-line: lowercase-global
function validateBinaryLengthAndNumbers(value)
    local count = 0
    local numberCounter = 0
    count = string.len(value)

    if count > 8 or count <= 0 then
        print("number should be between 1 and 8")
        os.exit()
    end

    for i=1, #value do
        if value:sub(i, i) == "1" or value:sub(i, i) == "0" then
            numberCounter = numberCounter + 1
        end
    end

    if numberCounter ~= count then
        print("numbers should be only 1 and 0")
        os.exit()
    end
end

function calculateBinary(value)
    local valueLength = string.len(value)
    local sum = 0
    value = string.reverse(value)
    for i = valueLength, 1, -1
        do
            print("Index: " .. i)
            print("Value: " .. string.sub(value, i, i))
            if  string.sub(value, i, i) == '1' then
                sum = sum+2^(i-1)
            end
        end
    print(sum)
end    

print('hello world')

local userInput

io.write("input a binary number type: \n")

userInput = io.read()

validateBinaryLengthAndNumbers(userInput)

calculateBinary(userInput)