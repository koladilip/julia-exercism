function _search(numbers::Vector, search::Number, start_idx::Int64, end_idx::Int64, lt)
    (start_idx < 1 || start_idx > end_idx) && return start_idx:end_idx
    middle_idx = div(start_idx + end_idx, 2)
    numbers[middle_idx] == search && return middle_idx:middle_idx
    lt(numbers[middle_idx], search) && return _search(numbers, search, middle_idx + 1, end_idx, lt)
    return _search(numbers, search, start_idx, middle_idx - 1, lt)
end

function binarysearch(numbers::Vector, search::Number; rev = false, lt = <, by = identity)
    rev && (lt = >)
    by != identity && (numbers = by.(numbers); search = by(search))
    _search(numbers, search, 1, length(numbers), lt)
end