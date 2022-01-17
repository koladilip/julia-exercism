"""
    count_nucleotides(strand)

The count of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
    valid_chars = Set(['A', 'C', 'G', 'T'])
    counts = Dict(c=>0 for c in valid_chars)
    foreach(c -> counts[c] = get(counts, c, 0) + 1, strand)
    issubset(keys(counts), valid_chars) ? counts : throw(DomainError("Invalid strand"))
end
