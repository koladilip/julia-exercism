function wordcount(sentence::AbstractString)
    valid_words = map(r -> r.match, eachmatch(r"(\d+|[a-z]+('[a-z]+)?)", lowercase(sentence)))
    counts = Dict{AbstractString, Int}()
    foreach(w -> counts[w] = get(counts, w, 0) + 1, valid_words)
    counts
end