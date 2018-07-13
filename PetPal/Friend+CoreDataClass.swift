//
//  Friend+CoreDataClass.swift
//  PetPal
//
//  Created by Наталья Синицына on 10.07.2018.
//  Copyright © 2018 Razeware. All rights reserved.
//
//

import Foundation
import CoreData
import UIKit


public class Friend: NSManagedObject {
    
    var eyeColorString: String {
        guard let color = eyeColor as? UIColor else {
            return "No Color"
        }
        
        switch color {
            case UIColor.black: return "Black"
            case UIColor.blue: return "Blue"
            case UIColor.brown: return "Brown"
            case UIColor.green: return "Green"
            case UIColor.gray: return "Gray"
        default: return "Unknown"
        }
    }

    var age: Int {
        if let dateOfBirth = dateOfBirth as Date? {
            return Calendar.current.dateComponents([.year], from: dateOfBirth, to: Date()).year!
        }
        return 0
    }
    
    
}
