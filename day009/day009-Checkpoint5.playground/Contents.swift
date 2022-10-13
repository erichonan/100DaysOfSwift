import Cocoa

//Checkpoint 5

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 21, 49]

//how do I know what to put here. I don't know how filter works or if that was even covered.
luckyNumbers.filter{$0.isMultiple(of: 2) ? false : true}.sorted().map{
        String($0).append(" is a luckyNumber")
}
