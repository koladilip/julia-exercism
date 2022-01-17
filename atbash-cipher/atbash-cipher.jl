cipher(c) = isdigit(c) ? c : 'a' + ('z' - c)

decode(input) = map(cipher, replace(lowercase(input), r"[\s,.]" => ""))

function encode(input)
    # r"(\w{5})(?=\w)" => s"\1 " adds space after every 5 letters
    replace(decode(input), r"(\w{5})(?=\w)" => s"\1 ")
end