//
//  Person.swift
//  swift-people
//
//  Created by Marie Park on 9/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Person {
    var name: String = ""
    var ageInYears: Int?
    var skills: [String] = []
    
    var qualifiedTutor: Bool {
        while skills.count >= 4 {
            return true
        }
        return false
    }

    init (name:String, ageInYears:Int?) {
        self.name = name
        self.ageInYears = ageInYears
    }
    
    convenience init (name:String) {
        self.init (name:name, ageInYears: nil)
    }

    convenience init () {
        self.init (name:"John Doe", ageInYears: nil)
    }

    
    func celebrateBirthday() -> String {
       
        if ageInYears == nil {
            return "HAPPY BIRTHDAY, \(name.uppercased())!!!"
        } else {
            ageInYears! += 1
            let phrase = ageInYears!.ordinal()
            return "HAPPY \(ageInYears!)\(phrase.uppercased()) BIRTHDAY, \(name.uppercased())!!!"

        }
    }
    
    func learnSkillBash(){
            if !skills.contains("bash"){
                skills.append("bash")
            }
    }
    
    func learnSkillXcode(){
        if !skills.contains("Xcode"){
            skills.append("Xcode")
        }
    }
    
    func learnSkillObjectiveC(){
        if !skills.contains("Objective-C"){
            skills.append("Objective-C")
        }
    }
    
    func learnSkillSwift(){
        if !skills.contains("Swift"){
            skills.append("Swift")
        }
    }
    
    func learnSkillInterfaceBuilder(){
        if !skills.contains("Interface Builder"){
            skills.append("Interface Builder")
        }
    }
}
    
