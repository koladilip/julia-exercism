
isprime(n, primes) = isempty(filter(p -> mod(n, p) == 0 ,primes))
function sieve(limit)
    limit < 2 && return []
    primes = []
    foreach(i -> isprime(i, primes) && push!(primes, i), 2:limit)
    primes
end
