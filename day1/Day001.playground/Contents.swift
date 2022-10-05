import Cocoa

let quote = """
A day in
the life of an
Apple engineer
"""

print (quote.count)
print (quote.uppercased())

//how to store numbers
let score = 10
let reallyBig = 100_000_000

let lowerScore = score - 2
let higherScore = score + 10
let doubleScore = score * score
let halvedScore = score / 2

var counter = 10
counter += 5 //compund assignment
print(counter)

counter *= 2
counter -= 10
counter /= 2

let number = 120
print(number.isMultiple(of: 3))
print(120.isMultiple(of: 3))

//How to store decimal numbers
let decimalNumber = 0.1 + 0.2
print(decimalNumber)

//type safety = no mixing of types
let a = 1
let b = 2.0
let c = a + Int(b)
print(c)

let double1 = 3.1
let double2 = 3131.3131
let double3 = 3.0
let int1 = 3

var name = "Nicolas Cage"
name = "John Travolta"

var rating = 5.0
rating *= 2

//Doubles and CGFloat are interchangeable in Swift

