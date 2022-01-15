
function rotate_char(num::Int64, char::Char)
    if char in 'a':'z'
        return 'a' + (char - 'a' + num) % 26 
    elseif char in 'A':'Z'
        return 'A' + (char - 'A' + num) % 26
    else
        return char
    end
end

function rotate(num::Int64, text::String) 
    map(char->rotate_char(num, char), text)
end

rotate(num::Int64, char::Char)  = rotate_char(num, char)

for i=0:26
    @eval macro $(Symbol('R', i, "_str"))(text::String)
        rotate($i, text)
    end
end