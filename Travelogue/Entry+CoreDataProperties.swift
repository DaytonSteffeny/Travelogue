//
//  Entry+CoreDataProperties.swift
//  Travelogue
//
//  Created by Dayton on 5/05/19.
//  Copyright © 2019 Dayton Steffeny. All rights reserved.
//

import Foundation
import CoreData


extension Entry {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Entry> {
        return NSFetchRequest<Entry>(entityName: "Entry")
    }

    @NSManaged public var content: String?
    @NSManaged public var date: NSDate?
    @NSManaged public var title: String?
    @NSManaged public var image: NSData?
    @NSManaged public var trip: Trip?

}
