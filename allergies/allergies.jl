const scores = Dict("eggs" => 1, "peanuts" => 2, "shellfish" => 4, "strawberries" => 8,
    "tomatoes" => 16, "chocolate" => 32, "pollen" => 64, "cats" => 128)

function allergic_to(score, allergen)
    score & scores[allergen] != 0
end

function allergy_list(score)
    keys(filter(p -> score & p.second != 0, scores))
end
