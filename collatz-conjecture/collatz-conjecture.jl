function collatz_steps(n) 
    n < 1 && throw(DomainError("Invalid number"))
    n == 1 && return 0
    iseven(n) ? 1 + collatz_steps(div(n, 2)) : 1 + collatz_steps(3n + 1)
end