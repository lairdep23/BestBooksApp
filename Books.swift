//
//  Books.swift
//  favoriteBooks
//
//  Created by Evan Laird on 2/26/16.
//  Copyright © 2016 Evan Laird. All rights reserved.
//

import Foundation
import CoreData
import UIKit


class Books: NSManagedObject {

// Insert code here to add functionality to your managed object subclass
    
    
    func setBookImage(img: UIImage){
        let data = UIImagePNGRepresentation(img)
        self.image = data
    }
    
    func getBookImage() -> UIImage {
        let img = UIImage(data: self.image!)!
        return img 
    }

}
