//
//  DetailsVC.swift
//  favoriteBooks
//
//  Created by Evan Laird on 3/1/16.
//  Copyright © 2016 Evan Laird. All rights reserved.
//

import UIKit
import CoreData

class DetailsVC: ViewController {
    
    
    
    
    @IBOutlet weak var bookDetTitle: UILabel!
    @IBOutlet weak var bookDetImage: UIImageView!
    @IBOutlet weak var bookDetDesc: UILabel!
  
    @IBOutlet weak var bookDetLink: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        
        func configurePage(book: Books) {
            
            bookDetTitle.text = book.title
            bookDetImage.image = book.getBookImage()
            bookDetDesc.text = book.bookDescription
            bookDetLink.text = book.link
        }
        
    }
    
   
    
    }

