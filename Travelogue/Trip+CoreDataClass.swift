//
//  Trip+CoreDataClass.swift
//  Travelogue
//
//  Created by Dayton on 5/05/19.
//  Copyright © 2019 Dayton Steffeny. All rights reserved.
//

import UIKit
import CoreData

@objc(Trip)
public class Trip: NSManagedObject {

    convenience init?(name: String?) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        guard let managedContext = appDelegate?.persistentContainer.viewContext,
            let name = name, name != "" else {
                return nil
        }
        self.init(entity: Trip.entity(), insertInto: managedContext)
        self.name = name
    }
    
}
