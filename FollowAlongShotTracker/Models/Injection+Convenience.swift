//
//  Injection+Convenience.swift
//  FollowAlongShotTracker
//
//  Created by David Sadler on 6/6/18.
//  Copyright © 2018 David Sadler. All rights reserved.
//

import Foundation
import CoreData
import UIKit

extension Injection {
    
    var image: UIImage {
        guard let photo = photo else { return UIImage() }
        guard let image = UIImage(data: photo as Data) else {return UIImage() }
        return image
        
    }
    convenience init(date: Date = Date(),
                     notes: String?,
                     photo: Data?,
                     context: NSManagedObjectContext = CoreDataStack.context) {
        self.init(context: context)
        
        self.date = date
        self.notes = notes
        self.photo = photo
        
    }
}
