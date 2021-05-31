from functools import reduce

# cond :: [(predicateFn, fn)] -> x -> fn(x)
def cond(condList):
    def evaluate(x):
        for con in condList:
            if con[0](x):
                return con[1](x)
    return evaluate

# equal :: a -> b -> boolean
def equal(a):
    return lambda b: a == b

# prop :: a -> b -> c
def prop(a):
    return lambda b: b[a]

# multiply :: a -> a -> a
def multiply(a):
    return lambda b: a * b

# compose :: turns a list of functions into a new function
def compose(*func):
    def composition(f, g):
        return lambda x : f(g(x))
    return reduce(composition, func, lambda x : x)

# pipe :: compose but backwards
def pipe(*func):
    def composition(f, g):
        return lambda x : g(f(x))
    return reduce(composition, func, lambda x : x)

# Example 1
whatHappensToWater = cond([
    (equal(0),          lambda x: "water freezez at %d deg C" % x),
    (equal(100),        lambda x: "water boils at %d deg C" % x),
    (lambda x: True,    lambda x: "nothing special happens at %d deg C" % x),
])
print(whatHappensToWater(0)) # -> "water freezez at 0 deg C"
print(whatHappensToWater(100)) # -> "water boils at 100 deg C"
print(whatHappensToWater(52)) # -> "nothing special happens at 53 deg C"

bob = {
    "age": 42,
    "name": "bob ross"
}
franky = {
    "age": 43,
    "name": "franky"
}
dingo = {
    "age": 12,
    "name": "dingo"
}

# example 2
res = cond([
    (pipe(prop("age"), equal(42)), (pipe(prop("age"), multiply(2)))),
    (pipe(prop("name"), equal("franky")), (pipe(prop("age"), multiply(2)))),
    (lambda x: True, lambda x: "age is not 42 and name is not franky"),
])

print(res(bob)) # -> 84
print(res(franky)) # -> 86
print(res(dingo)) # -> "age is not 42 and name is not franky"
