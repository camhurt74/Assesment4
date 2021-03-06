//
//  main.swift
//  Assessment4
//
//  Created by Ryan Brashear on 9/10/18.
//  Copyright © 2018 Ryan Brashear. All rights reserved.
//

import Foundation

//1. Create a class called School. Give it properties to model:
// -the name of the school
// -the number of students that attend
// -if it is a public or private school
// -the year it was built
//
// Add a function called schoolDescription to the School class that will print out "\(name of school) was founded in \(the year it was built) and has \(number of students) currently in attendance"

// Create an instance of school and then call it's schoolDescription function

class School {
    var nameOfSchool: String
    var studentsThatAttend: Int
    let privateSchool: Bool
    var yearItWasBuilt: Int
    let rivalSchool: String
    let schoolMascot: String
    let castleSize: Int
    let numberOfPassages: Int
   
    
    
    init(nameOfSchool: String, studentsThatAttend: Int, privateSchool: Bool, yearItWasBuilt: Int, rivalSchool: String, schoolMascot: String, castleSize: Int, numberOfPassages: Int) {
        self.nameOfSchool = nameOfSchool
        self.studentsThatAttend = studentsThatAttend
        self.privateSchool = privateSchool
        self.yearItWasBuilt = yearItWasBuilt
        self.rivalSchool = rivalSchool
        self.schoolMascot = schoolMascot
        self.castleSize = castleSize
        self.numberOfPassages = numberOfPassages
    }
    
    func schoolDescription() {
     
            print("\(nameOfSchool) was founded in \(yearItWasBuilt) and has \(studentsThatAttend) currently in attendance")
        
    }
    func pepRally() {
        print("\(nameOfSchool) is the best school! \(rivalSchool) is awful")
    }
}
let school = (School(nameOfSchool: "Barren county High School", studentsThatAttend: 1313, privateSchool: false, yearItWasBuilt: 1973, rivalSchool: "Glasgow", schoolMascot: "Trojans", castleSize: 0, numberOfPassages: 0))

 print(school.schoolDescription())








//2. Create a HighSchool class that inherits from our base school class. Add a property that will represent a rival highschool. Additionally, add a property that will represent the school mascot.
//
// Add a function called pepRally that will print "\(school name) is the best! \(rival school name) is awful!"
//
// Override the schoolDescription function to make it print "\(school name) is the best in the state since \(the year it was built)! Go \(school mascot)'s!!!"
//
// Create an instance of a highschool and call both the schoolDescription and the pepRally functions.
class RivalSchool: School {
   
override func schoolDescription() {
        print("\(nameOfSchool) is the best in the state since \(yearItWasBuilt)! Go \(schoolMascot)'s!!!")
    }
}
let pepRally = RivalSchool(nameOfSchool: "Barren county", studentsThatAttend: 1313, privateSchool: false, yearItWasBuilt: 1973, rivalSchool: "Glasgow", schoolMascot: "Trojan", castleSize: 20000, numberOfPassages: 50)
print(pepRally.pepRally())
print(pepRally.schoolDescription())

//3.Create a new class called MagicalHighSchool (think Hogwarts from Harry Potter) that inherits from our HighSchool class. Add new properties for the size of the castle in square feet and the number of secret passages it contains.
//
// Override the pepRally function to make it print "\(school name) is the most magical school on earth! It's castle is (\castle size) square feet, and it has \(number of secret passages) secret passageways! Hurray!"
//
// Create a new function called quidditchMatch that will print "Time for the big quidditch game!"
//
// Create an instance of a magical highschool. Then call all 3 of the functions that it contains/inherits.

class MagicalHighSchool: School {
   
   override func pepRally() {
    print("\(nameOfSchool) is the most magical school on earth! It's castle is \(castleSize) square feet, and it has \(numberOfPassages) secret passages! Hurray! ")
    }
    func quidditchMatch() {
        print("Time for the big quidditch game!")
    }
}
let magicSchool = MagicalHighSchool(nameOfSchool: "Bowling green", studentsThatAttend: 2000, privateSchool: false, yearItWasBuilt: 1972, rivalSchool: "none", schoolMascot: "none", castleSize: 20000, numberOfPassages: 50)

print(magicSchool.pepRally())
print(magicSchool.quidditchMatch())

//BONUS: Create a new Date() object that represents the current date. Create a date formatter and set the custom date format for it. Use the date formatter to create a formatted String from the date object, and print the formatted String.

