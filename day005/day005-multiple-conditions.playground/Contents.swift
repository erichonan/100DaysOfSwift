import Cocoa

// multiple conditions

let age = 16

if age >= 18 {
    print("You can vote in the next election.")
} else {
    print("Sorry, you're too young to vote.")
}

let temp = 25

if temp > 20 && temp < 30 {
    print("It's a nice day.")
}

// && is a logical operator

let userAge = 14

let hasParentalConsent = true
if age >= 18 || hasParentalConsent {
    print("You can buy the game!")
}

enum TransportOption {
    case airplane, helicopter, bicycle, car, escooter
}

let transport = TransportOption.car

if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
} else if transport == .bicycle {
    print("I hope there's a bike path.")
} else if transport == .car {
    print("Time to get stuck in traffic")
} else {
    print("I'm going to hire a scooter now!")
}

//Switch statements

enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.sun

//in a switch statement, all possible values must be addressed
switch forecast {
case .sun:
    print("It should be a nice day.")
    fallthrough //continue to next case even if this one is true
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm")
case.snow:
    print("School is cancelled.")
case.unknown:
    print("Our forecast generator is broken!")
}

// Ternary conditional operator - opearates on 3 pieces of data at the same time

