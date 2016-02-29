//
//  Books+CoreDataProperties.swift
//  favoriteBooks
//
//  Created by Evan Laird on 2/26/16.
//  Copyright © 2016 Evan Laird. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Books {

    @NSManaged var image: NSData?
    @NSManaged var title: String?
    @NSManaged var bookDescription: String?
    @NSManaged var link: String?

}
