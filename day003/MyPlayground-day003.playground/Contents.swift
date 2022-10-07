import Cocoa

// Arrays

var beatles = ["John", "Paul", "George", "Ringo"]
beatles.append("Adrian")

print(beatles.count)

//What is this called?
var scores = Array<Int>()
var albums = [String]()
var numbers = [1]

var characters = ["Lana", "Pam", "Ray","Sterling"]
print(characters.count)

characters.remove(at: 2)
print(characters.count)

//characters.removeAll()
//print(characters.count)

print(characters.contains("Pam"));

print(characters.sorted())
print(characters.reversed())

// Dictionaries
// "keys": "values"
// optionals: "this data may or may not exist"

let employee2 = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]
print(employee2["name", default: "Unknown"])
print(employee2["job", default:"Unknown"])
print(employee2["location", default:"Unknown"])

let hasGraduated = [
    "Eric": true,
    "Bob": false
]

let olympics = [
    2012: "London",
    2016: "Rio de Janiro",
    2021: "Tokyo"
]

print(olympics[2012, default: "Unkown"])

var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206

// Sets - don't remember order added and no duplicates allowed
// highly optimized for performance and fast item lookup
let actors = Set([
    "Denzel Washington",
    "Tom Cruise",
    "Nicolas Cage",
    "Samuel L Jackson"
])
print(actors)

var instruments = Set<String>()
instruments.insert("Guitar")
instruments.insert("Drums")
instruments.insert("Bass")
var hasViolin = instruments.contains("Violin")
var sortedInstruments = instruments.sorted()
print(instruments)

// Enums a set of named values - efficient and safe
// allows one to set the range of allowed values

enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
//day is a Weekday "type" so with .tuesday, swift assumes Weekday "type"
day = .tuesday
print(day)
