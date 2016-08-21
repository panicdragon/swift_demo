//: Playground - noun: a place where people can play

import UIKit

var str = "Hello! "

var newString = str + "daisuke"


for charactor in newString.characters {

    print(charactor)

}


var newTypeString = NSString(string: newString)


newTypeString.substringToIndex(5)

newTypeString.substringFromIndex(5)

newTypeString.substringWithRange(NSRange(location: 3, length: 5))

newTypeString.containsString("dai")

if newTypeString.containsString("dai") {
    
}


newTypeString.componentsSeparatedByString(" ")

newTypeString.uppercaseString

newTypeString.lowercaseString

