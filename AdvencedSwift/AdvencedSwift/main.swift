//
//  main.swift
//  AdvencedSwift
//
//  Created by Güney Berkay  on 5.09.2022.
//

import Foundation

print("Hello, World!")

let classJames = MusicianClass(nameInput: "James", ageInput: 50, instrumentInput: "Guitar")
print(classJames.age)


// let structJames deseydik değerleri bir daha değiştiremiyoruz ,IMMUTABLE STRUCT
var structJames = MusicianStruct(name: "James", age: 50, instrument: "Guitar")
print(structJames.age)

structJames.age = 68
print(structJames.age)

//REFERENCE VALUE

let copyOfClassJames = classJames
var copyOfStructJames = structJames

print(copyOfClassJames.age)
print(copyOfStructJames.age)

copyOfClassJames.age = 52
copyOfStructJames.age = 52

print(copyOfClassJames.age)
print(copyOfStructJames.age)

print(classJames.age)
print(structJames.age)

//reference types -> class
//copy -> same object new reference -> 1 object + 2 reference

//value type -> struct
//copy -> new object -> 2 objects

classJames.happyBday()
print(classJames.age)

structJames.happyBday()
print(structJames.age)


//TUPLE

let myTuple = (1,3)
print(myTuple.0)

var myTuple2 = (1,3,5)
myTuple2.2 = 10
print(myTuple2.2)

let myTuple3 = ("berkay",20)
let myTuple4 = (10,[10,20,30])
print(myTuple4.1[1])

let newTuple = (name : "James", metallica : true)
print(newTuple.metallica)

//guard let vs if let

let myString = "5"

func convertToIntGuard (stringInput : String) -> Int {
    guard let myInteger = Int(stringInput) else {
        return 0
    }
    return myInteger
}

func convertToIntIf (stringInput : String) -> Int {
    if let myInteger = Int(stringInput){
        return myInteger
    }
    else {
        return 0
    }
}
print(convertToIntIf(stringInput: myString))
print(convertToIntGuard(stringInput: myString))



//Switch

let myNumber = 11
let myRemainder = myNumber % 4

print(myRemainder)

if myRemainder == 1 {
    print("it's 1")
} else if myRemainder == 2 {
    print("it's 2")
} else if myRemainder == 3 {
    print("it's 3")
}

switch myRemainder {
case 1 :
    print("it's 1")
case 2 :
    print("it's 2")
case 3 :
    print("it's 3")
default:
    print("none of above")
}

//Breakpoint

var x = 5
print(x)

x += 1
print(x)




