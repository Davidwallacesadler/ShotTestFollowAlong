//
//  Site+Convenience.swift
//  FollowAlongShotTracker
//
//  Created by David Sadler on 6/6/18.
//  Copyright © 2018 David Sadler. All rights reserved.
//

import Foundation
import CoreData

extension Site {
    convenience init(color: Double,
        identifier: Double,
        context:NSManagedObjectContext = CoreDataStack.context) {
        self.init(context: context)
        
        self.color = color
        self.identifier = identifier
    }
}
