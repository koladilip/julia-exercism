function encode(s)
    all_matches = eachmatch(r"(.)\1*", s)
    format(m) = (x = m.match; length(x) == 1 ? string(first(x)) : string(length(x), first(x)))
    mapfoldl(format, string, all_matches; init = "")
end

function decode(s)
    all_matches = eachmatch(r"(\d*).", s)
    format(m) = (x = m.match; length(x) > 1 ? repeat(string(last(x)), parse(Int, x[1:end-1])) : x)
    mapfoldl(format, string, all_matches; init = "")
end