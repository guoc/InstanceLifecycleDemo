//
//  AppDelegate.swift
//  InstanceLifecycleDemo
//
//  Created by guoc on 10/04/2016.
//  Copyright © 2016 guoc. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        print("ARC Demo")
        do {
            print("Start of current scope.")
            
            let thomas = Person(name: "Thomas")
            var students = [Person]()
            students.append(thomas)
            
            print("End of current scope.")
        }
        print()
        
        print("Strong Reference Cycle Demo")
        do {
            print("Start of current scope.")

            let thomas = Person(name: "Thomas")
            let carol = Person(name: "Carol")
            
            thomas.friend = carol
            carol.friend = thomas
            
            print("End of current scope.")
        }
        print()
        
        print("Weak Reference Demo")
        do {
            print("Start of current scope.")
            
            let thomas = PersonWithWeakFriend(name: "Thomas")
            let carol = PersonWithWeakFriend(name: "Carol")
            
            thomas.friend = carol
            carol.friend = thomas
            
            print("End of current scope.")
        }
        print()
        
        print("-------------------------")
        print("Underscore Reference Demo")
        print()
        do {
            print("Start of current scope.")
            
            let thomas = Person(name: "Thomas")
            
            print("End of current scope.")
        }
        print()
        do {
            print("Start of current scope.")
            
            _ = Person(name: "Thomas")
            
            print("End of current scope.")
        }
        print()
        do {
            print("Start of current scope.")
            
            weak var thomas = Person(name: "Thomas")
            
            print("End of current scope.")
        }
        print()
        
        return true
    }


}

