import Cocoa

enum SquareRootError: Error {
    case tooSmall, tooLarge, noSquareRoot
}

func getSquareRootOf(_ number: Int) throws -> Int {
    if(number < 1) {
        throw SquareRootError.tooSmall
    } else if (number > 10_000) {
        throw SquareRootError.tooLarge
    }
    
    //calclate square root
    //get all factors by using x % number
    var multiples = Array<Int>()
    for i in 1..<number {
        if((number % i) == 0) {
            multiples.append(i)
            print("found a factor! \(i)")
        }
    }
    
    //multiply each of those factors by themselves and check if == number
    var squareRoot = 0
    
    //I'm pretty sure this second loop is unnecessary as I should be able to just do the check for each multiple in the above loop but I am very tired and need to go to bed.
    for multiple in multiples {
        print("multiple: \(multiple) and number: \(number)")
        if(multiple * multiple == number) {
            squareRoot = multiple
            print("found it!")
        }
    }
    
    if(squareRoot == 0) {
        throw SquareRootError.noSquareRoot
    } else { //if true, return as square root
        return squareRoot
    }
}

do {
    try print("The squareRoot is \(getSquareRootOf(48))")
} catch SquareRootError.tooSmall {
    print("That number is too small")
} catch SquareRootError.tooLarge {
    print("That number is too large")
} catch SquareRootError.noSquareRoot {
    print("That number does not have a square root")
} catch {
    print("There was an error")
}

//After completing the exercise and watching the hints, it turns out I could have made this a lot easier by just checking each number 1*1, 2*2 etc. to see if any result matched my number.
