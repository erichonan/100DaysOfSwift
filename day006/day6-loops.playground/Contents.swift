import Cocoa

let platforms = ["iOS", "macOS", "tvOS", "WatchOS"]

//for in loop
for os in platforms { //each time through the loop is a loop iteration. "os" is the loop variable
    //loop body
    print("Swift works great on \(os)")
}

//for loop
for i in 1...12 { //1...12 is a range (includes 1 and 12)
    print("5 * \(i) is \(5 * i)")
}

for i in 1...12 {
    print("The \(i) times table")
    
    for j in 1...12 {
        print("   \(j) x \(i) is \(j * i)")
    }
    
    print()
}

for i in 1...5 { //"One through 5
    print("counting from 1 through 5: \(i)")
}

print()

for i in 1..<5 { //"One, up to 5" or "One to 5"
    print("counting from 1 through 5: \(i)")
}

var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)

// How to skip loop items (break and continue)
let filenames = ["me.jpg", "work.txt", "sophie.jpg"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }
    print("Found picture: \(filename)")
}

let number1 = 4
let number2 = 14

var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)
        
        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)

var myNumber = 15 % 10
print(myNumber)
