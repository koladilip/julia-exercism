import Base: +, -
using Dates
using Printf

const minutes_in_day = 24*60
const minutes_in_hour = 60

to_relative_minutes(minutes::Int64) = mod(minutes, minutes_in_day)

to_relative_minutes(hour::Int64, minutes::Int64) = to_relative_minutes(hour*60 + minutes)

struct Clock
    relative_minutes::Int64
    Clock(minutes::Int64) = new(to_relative_minutes(minutes))
    function Clock(hour::Int64, minutes::Int64)
        new(to_relative_minutes(hour, minutes))
    end
end

function (+)(clock::Clock, period::Dates.Period)
    Clock(clock.relative_minutes + convert(Dates.Minute, period).value)
end

function (-)(clock::Clock, period::Dates.Period)
    Clock(clock.relative_minutes - convert(Dates.Minute, period).value)
end

function Base.show(io::IO, clock::Clock)
    minutes = mod(clock.relative_minutes, minutes_in_hour)
    hours = div(clock.relative_minutes, minutes_in_hour)
    timepad(num) = lpad(num, 2, "0")
    print(io, "\"$(timepad(hours)):$(timepad(minutes))\"")
end