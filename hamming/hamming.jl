"Counts difference between to strings"
function distance(a, b)
    length(a) != length(b) && throw(ArgumentError("Different lengths"))
    sum(map(!=, a, b))
end
