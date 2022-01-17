function isisogram(s)
    replace(s, r"[\s-]" => "") |> lowercase |> allunique
end
