function detect_anagrams(subject, candidates)
    base_letters = sort ∘ collect ∘ lowercase
    is_anagram(word) = lowercase(word) != lowercase(subject) && base_letters(word) == base_letters(subject) 
    filter(is_anagram, candidates)
end
