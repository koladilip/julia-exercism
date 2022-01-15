function raindrops(number)
    output = ""
    number % 3 == 0 && (output *= "Pling")
    number % 5 == 0 && (output *= "Plang")
    number % 7 == 0 && (output *=  "Plong")
    isempty(output) ? string(number) : output
end
