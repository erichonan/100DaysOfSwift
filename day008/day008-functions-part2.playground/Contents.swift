import Cocoa

//Functions part II
//provide default values for parameters

func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
print()
printTimesTables(for: 8)

// Handling errors in functions
// Step 1: Define the problems that can occur

enum PasswordError: Error {
    case short, obvious
}

// 2: Create a function using those errors
func checkPassword(_ password: String) throws -> String { //this func capable of throwing errors
    
    if password.count < 5 {
        throw PasswordError.short
    }
    
    if password == "12345" {
        throw PasswordError.obvious
    }
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

// 3: Run the function and handle any errors that might occur
// 3a: Start a block of code that might throw errors by saying "do {"
// 3b: Call one or more throwing functions by saying "try"
// 3c: Have a catch block that handles any errors that might come back
//
// do {
//    try someRiskyWork()
// } catch {
//    print("Handle errors here")
// }

let string = "12345"
do {
    let result = try checkPassword(string) //try MUST be written before any throwing function
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("That password is too common")
} catch { //pokemon catch wakka wakka
    print("There was an error: \(error.localizedDescription)")
}

