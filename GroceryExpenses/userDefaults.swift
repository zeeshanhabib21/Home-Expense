//
//  userDefaults.swift
//  GroceryExpenses
//
//  Created by Apple on 20/08/2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation


class userDefaults {
    
    class var isFirstRun: Bool {
        get {
            return !UserDefaults.standard.bool(forKey: "isFirstRun")
        }
        set {
            UserDefaults.standard.set(!newValue, forKey: "isFirstRun")
            UserDefaults.standard.synchronize()
        }
    }
    
    
    
}
