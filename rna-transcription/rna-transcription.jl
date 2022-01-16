function to_rna(dna)
    mapping = Dict('G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U')
    !issubset(Set(collect(dna)), keys(mapping)) && throw(ErrorException("Invalid DNA"))
    map(c->mapping[c], dna)
end

