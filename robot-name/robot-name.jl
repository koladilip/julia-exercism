using Random
mutable struct Robot
    name
    Robot() = new(new_name())
end

const name_history = Set{String}()

function new_name()
    name = randstring('A':'Z', 2) * lpad(mod(rand(Int64), 1000), 3, "0")
    if !in(name, name_history)
        push!(name_history, name)
        return name        
    end
    new_name()
end

function reset!(instance::Robot)
    instance.name = new_name()
end

function name(instance::Robot)
    instance.name
end
