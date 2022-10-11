import Cocoa

// functions

let roll = Int.random(in: 1...20)

func printTimesTables(number: Int, end: Int) { //parameters are placeholders
    for i in 1...end {
        print("\(i) * \(number) is \(i * number)")
    }
}

printTimesTables(number: 8, end: 20) //actual values passed are arguments

//returning values from functions

let root = sqrt(169)

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

//Do two strings contain the same letters, regardless of their order?
//The most difficult part of this challenge was figuring out what to name the damn function
//Oh, he went with areLettersIdentical. Yeah that is better.
//And his solution was waaaay more concise and elegant.

func areAllCharactersShared(string1: String, string2: String) -> Bool {
    if(string1.sorted() == string2.sorted()) {
        return true
    } else {
        return false
    }
}

areAllCharactersShared(string1: "Testing", string2: "Test")

//for reference this is what he did:
func areLettersIdentical(string1: String, string2: String) -> Bool {
    string1.sorted() == string2.sorted() //we can remove "return" which is nuts
    // only works if there's just a single line of code that returns the appropriate data type
}

func pythagoras(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}

let c = pythagoras(a: 3, b: 4)
print(c)

//adding "return" on it's own forces an exit from the function


// Tuples (fixed size)

func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")

func getUser3() -> (firstName: String, lastName: String) {
    ("Taylor", "Swift")
}

let (firstName, lastName) = getUser3() //destructuring, splitting the tuple into two constants
print("Name: \(firstName) \(lastName)")

//Tuples can be created without names i.e. (String, String) and are accessed with tuple.0 and tuple.1
//      if you don't need one of the values you can drop it by using an underscore i.e.
//      let (firstName, _) = getUser3()

//Quote from opt reading
// arrays keep the order and can have duplicates
// sets are unordered and can't have duplicates
// tuples have a fixed number of values and fixed types inside them

// But how does a dictionary compare to the above? I guess it's different enough to not warrant an explanation

//Customize parameter labels
func isUppercase(_ string: String) -> Bool { //no parameter label is needed when calling this func because of the _
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let answer = isUppercase(string)

func printTimesTable(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTable(for: 5)

func evaluateJavaScript(_ input: String) {
    print("Yup, that's JavaScript alright.")
}

