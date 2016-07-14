//  AppDelegate.swift

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        let Claire = Person(name: "Claire Katherine", ageInYears: 27)
        print(Claire.celebrateBirthday())
        
        Claire.learnSkillBash()
        Claire.learnSkillSwift()
        Claire.learnSkillObjectiveC()
        
        print("Is Claire a qualified tutor? \(Claire.qualifiedTutor)")
        print("What if she learns one more programmer skill?!")
        
        Claire.learnSkillXcode()
        print("Now she's good to go, ya? \(Claire.qualifiedTutor)")
        // Do not alter
        return true  //
    }   //////////////
}       /////////////

