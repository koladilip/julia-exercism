using Unicode
const TEST_GRAPHEMES = true

myreverse(s) = foldl((a,b) -> Base.string(b, a), graphemes(s); init="") 
