import Cocoa

//Structs
struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

print(red.title)
print(wings.artist)

red.printSummary()
wings.printSummary()

struct Employee {
    //properties of the struct
    let name: String
    var vacationRemaining: Int
    
    //methods
    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}

//archer is an instance of Employee
//and everything after the = is the "Initializer"
var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
archer.takeVacation(days: 6)
print(archer.vacationRemaining)
