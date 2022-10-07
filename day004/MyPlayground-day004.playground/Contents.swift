import Cocoa

// Type Annotations

let surname: String = "Lasso"
var score: Double = 0 //override as this would default to an int

var albums: [String] = ["Red", "Fearless"]
var user: [String: String] = ["id"; "@twostraws"]
var books: Set<String> = Set([
    "The Bluest Eye",
    "Foundation",
    "Girl, Woman, Other"
])

//creating an empty array of Strings
var teams: [String] = [String]()
var cities: [String] = [] //same as above
var clues = [String]() //same as above, but using type annotation

// Enums

enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light
style = .dark //style is of type UIStyle so we don't have to specify when selecting a different value (in this case .dark)

