
function rotate_char(num, char)
    if char in 'a':'z'
        return 'a' + (char - 'a' + num) % 26 
    elseif char in 'A':'Z'
        return 'A' + (char - 'A' + num) % 26
    else
        return char
    end
end

function rotate(num::Int64, text::String) 
    join([rotate_char(num, c) for c in collect(text)])
end

function rotate(num::Int64, char::Char) 
    rotate_char(num, char)
end