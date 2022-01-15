function score(x, y)
    distance = hypot(x, y)
    distance > 10 && return 0
    distance > 5 && distance <= 10 && return 1
    distance > 1 && distance <= 5  && return 5
    distance <= 1 && return 10
end
