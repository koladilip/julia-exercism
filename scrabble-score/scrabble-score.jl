const scores_list = [(1, "aeioulnrst"), (2, "dg"), (3, "bcmp"),
    (4, "fhvwy"), (5, "k"), (8, "jx"), (10, "qz")]

const scores =  Dict(c=>score for (score, chars) in scores_list for c in chars)

function score(str)
    sum(map(c -> get(scores, c, 0), collect(lowercase(str))))
end
