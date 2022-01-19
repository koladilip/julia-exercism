function triangle(n)
    n < 0 && throw(DomainError("Invalid number"))
    n == 0 && return []
    rows = [[1]]
    for i in 2:n
        previous_row = [rows[i-1]..., 0]
        push!(rows, previous_row + reverse(previous_row))
    end
    rows
end
