import Cocoa

let crayons = ["Brown", "Scarlet", "Yellow Green", "Indigo", "Blue Violet", "Brown", "Yellow Green", "Brown", "Scarlet", "Apricot"]
print(crayons.count)

let uniqueCrayons = Set(crayons)
print(uniqueCrayons.count)

//Some things that tripped me up where trying to annotate the type of the array which is done like this:

let arrayOfInts = Array<Int>([1, 2, 3, 4])

//which is very clunky when this would suffice
let arrayOfStrings = ["hello", "world"]

//Also, I had some trouble figuring out how to initialize the Set using my array. I'm still getting used to the syntax especially when using type annotation

