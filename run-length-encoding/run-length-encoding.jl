function encode(s)
    encoded = ""
    previous = Nothing
    count = 0
    for c in s
        if previous == Nothing
            previous = c
            count += 1
        elseif previous == c
            count += 1
        else
            encoded *= count > 1 ? "$(count)$(previous)" : previous
            previous = c
            count = 1
        end
    end
    count > 0 && (encoded *= count > 1 ? "$(count)$(previous)" : previous)
    return encoded
end



function decode(s)
    decoded = ""
    count = 0
    for c in s
        if c in '0':'9'
            count = 10 * count + (c - '0')
        else
            decoded *= count > 0 ? repeat(c, count) : c
            count = 0
        end
    end
    return decoded
end
