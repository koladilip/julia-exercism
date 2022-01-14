"""
    ispangram(input)

Return `true` if `input` contains every alphabetic character (case insensitive).

"""
function clean_input(input) 
    # Remove unnecessary characters
    return replace(lowercase(input), r"[0-9 _.\"]" => s"")
end

function ispangram(input)
    input_chars = Set(collect(clean_input(input)))
    all_alphabets = Set('a':'z')
    return all_alphabets == input_chars
end
