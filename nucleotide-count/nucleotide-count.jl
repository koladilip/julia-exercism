"""
    count_nucleotides(strand)

The count of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
    strand_arr = collect(strand)
    valid_chars = Set(['A', 'C', 'G', 'T'])
    strand_chars = Set(strand_arr)
    if !isempty(setdiff(strand_chars, valid_chars))
        throw(DomainError("Found invalid nucleotides"))
    end
    Dict(element => count(==(element), strand_arr) for element in valid_chars)
end
