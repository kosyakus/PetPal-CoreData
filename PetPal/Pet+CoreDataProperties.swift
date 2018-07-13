//
//  Pet+CoreDataProperties.swift
//  PetPal
//
//  Created by Наталья Синицына on 12.07.2018.
//  Copyright © 2018 Razeware. All rights reserved.
//
//

import Foundation
import CoreData


extension Pet {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Pet> {
        return NSFetchRequest<Pet>(entityName: "Pet")
    }

    @NSManaged public var name: String?
    @NSManaged public var kind: String?
    @NSManaged public var picture: NSData?
    @NSManaged public var dateOfBirth: NSDate?
    @NSManaged public var owner: Friend

}
