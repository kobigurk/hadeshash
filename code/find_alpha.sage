PRIME = int(sys.argv[1])

for i in Primes():
  if gcd(i, PRIME-1) == 1:
    print(i)
    break
