function secret_handshake(code)
    handshakes = []
    code & 1 == 1 && push!(handshakes, "wink")
    code & 2 == 2 && push!(handshakes, "double blink")
    code & 4 == 4 && push!(handshakes, "close your eyes")
    code & 8 == 8 && push!(handshakes, "jump")
    code & 16 == 16 && reverse!(handshakes)

    return handshakes
end
