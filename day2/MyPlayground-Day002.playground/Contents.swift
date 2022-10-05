import Cocoa

var greeting = "Hello, playground"

//Booleans
let goodDogs = true
var gameOver = false
let isMultiple = 120.isMultiple(of: 3)

var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)

gameOver.toggle()
print(gameOver)

//Joining strings,
let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action
//above is an example of operator overloading

let quote = "Then he tapped a sign saying \"Believe\" and walked away."

let name = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old."
//string interpolation allows you to easily add different data types into a string

//interpolation can do calculations i.e.
print("5 x 5 = \(5 * 5)")
