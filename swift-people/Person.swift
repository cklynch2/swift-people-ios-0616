//
//  Person.swift
//  swift-people
//
//  Created by Flatiron School on 7/14/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Person {
    let name : String
    var ageInYears : Int?
    var skills : [String]
    var qualifiedTutor : Bool {return(skills.count > 3)}
    
    // You could also define the skills property to be of type Set<String>. This would ensure that duplicate skills could not be added to the set.
    // var skills : Set<String>
    
    init(name: String, ageInYears: Int?) {
        self.name = name
        self.ageInYears = ageInYears
        skills = [String]()
    }
    
    convenience init(name: String) {
        self.init(name: name, ageInYears: nil)
    }
    
    convenience init() {
        self.init(name: "John Doe", ageInYears: nil)
    }
    
    func celebrateBirthday() -> String {
        if var age = ageInYears {
            age += 1
            ageInYears = age
            
            return "HAPPY \(age)\(age.ordinal()) BIRTHDAY, \(name.uppercaseString)!!!"
            
        } else {
            return "HAPPY BIRTHDAY, \(name.uppercaseString)!!!"
        }
    }
    
    func learnSkillBash() {
        if !skills.contains("bash") {
            skills.append("bash")
        }
    }
    
    func learnSkillXcode() {
        if !skills.contains("Xcode") {
            skills.append("Xcode")
        }
    }
    
    func learnSkillObjectiveC() {
        if !skills.contains("Objective-C") {
            skills.append("Objective-C")
        }
    }
    
    func learnSkillSwift() {
        if !skills.contains("Swift") {
            skills.append("Swift")
        }
    }
    
    func learnSkillInterfaceBuilder() {
        if !skills.contains("Interface Builder") {
            skills.append("Interface Builder")
        }
    }
    
    // If you chose to define the skills property as a set, these functions would not have to check whether the skill was already contained in the set, thus instead would look like:
    
    // func learnSkillBash() {
    //      skills.insert("bash")
    //}
    
}