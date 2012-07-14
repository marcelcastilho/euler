# Problem 5:
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
# => 232792560

@num = 20

def gcd(a, b)
    return a if b == 0
    gcd(b, a%b)
end

def lcm(a, b)
    return a * b / gcd(a, b)
end

puts (1..@num).reduce { |a, b| lcm(a, b) }