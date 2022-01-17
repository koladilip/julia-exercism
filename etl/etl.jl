function transform(input::AbstractDict)
    Dict(c=>score for (score, list) in input for c in lowercase.(list))
end

