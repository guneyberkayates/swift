//
//  main.swift
//  ProtocolSwift
//
//  Created by Güney Berkay  on 6.09.2022.
//

import Foundation

protocol Running {
    func myRun()
}

class Animal {
    func running(){
        print("running")
    }
}
class Dog : Running {
    func myRun() {
        print("running")
    }
    
}
let barley = Dog()
barley.myRun()

class Cat : Animal {
    
}
let cat = Cat()
cat.running()

class Turtle : Animal {
    
}

let leonardo = Turtle()
leonardo.running()

struct Bird : Running {
    func myRun() {
        print("run")
    }
    
    
}
let tweety = Bird()
tweety.myRun()
