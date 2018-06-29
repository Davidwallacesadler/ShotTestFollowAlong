//
//  BodyPart+Convenience.swift
//  FollowAlongShotTracker
//
//  Created by David Sadler on 6/6/18.
//  Copyright © 2018 David Sadler. All rights reserved.
//

import Foundation
import CoreData

extension BodyPart {
    convenience init(color: Double,
                     location: String,
                     numberOfSites: Double,
                     context: NSManagedObjectContext = CoreDataStack.context){
        self.init(context: context)
        self.color = color
        self.location = location
        self.numberOfSites = numberOfSites
    }
}
