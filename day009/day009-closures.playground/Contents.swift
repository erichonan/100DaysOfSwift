import Cocoa

func greetUser() {
    print("Hi there!")
}

//Type annotation for a function
var greetCopy: () -> Void = greetUser

let sayHello = {
    print("Hi there!")
} //this is a closure expression assigned to a variable

sayHello()

let sayHello2 = { (name: String) -> String in
    "Hi \(name)"
}

sayHello2("Eric")

func getUserData(for id: Int) -> String {
    if id == 1982 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData

let user = data(1989)
print(user)

//parameter names are lost in closures and copies of functions

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

//custom sorting function
func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
}

//let captainFirstTeam = team.sorted(by: captainFirstSorted)
//print(captainFirstTeam )

let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
})

print(captainFirstTeam)

//closures can't use external parameter labels

//Trailing closures and shorthand syntax
// Here is an alternate captainFirstTeam syntax

let captainFirstTeamAlt = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }
    return $0 < $1
}

//Since parameters and return type are already known, we don't have to repeat them
// an intermediate step would be
//let sorted = team.sorted { a, b in ... }

// How to accept functions as parameters

func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    
    return numbers
}

let rolls = makeArray(size: 50) {
    Int.random(in: 1...20)
}

print(rolls)

func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}

doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}

func tendGarden(activities: () -> Void) {
    print("I love gardening")
    activities()
}
//this is actually calling the above function and including the func to pass into itself
tendGarden {
    print("Let's grow some roses!")
}


//another example
func repeatAction(count: Int, action: () -> Void) {
    for _ in 0..<count {
        action()
    }
}

repeatAction(count: 5) {
    print("Hello, world")
}
