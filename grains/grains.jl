validate(square) = (square < 1 || square > 64) && throw(DomainError("Invalid square"))

"""Calculate the number of grains on square `square`."""
function on_square(square)
    validate(square)
    Int128(2)^(square-1)
end

"""Calculate the total number of grains after square `square`."""
function total_after(square)
    validate(square)
    (Int128(2)^square)-1
end
