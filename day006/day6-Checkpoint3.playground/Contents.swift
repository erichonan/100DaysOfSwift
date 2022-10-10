import Cocoa

// Checkpoint 3: Fizz Buzz

for i in 1...100 {
    
    if(i.isMultiple(of: 3) || i.isMultiple(of: 5)) {
        var result = ""
        if(i.isMultiple(of: 3)) {
            result += "Fizz"
        }
           
        if(i.isMultiple(of: 5)) {
            result += "Buzz"
        }
        print("\(i): \(result)")
    } else {
        print(i)
    }
}

// Initially I wanted to try to use a switch statement but I wasn't able to get that to work. I couldn't figure out what to use as the comparison variable at the beginning of the switch statement since i is an int and I was trying to compare it to a bool. Should I have created a bool? I can tell I'm missing something about how the switch statement should work
