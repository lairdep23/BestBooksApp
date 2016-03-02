//
//  BooksTableCell.swift
//  favoriteBooks
//
//  Created by Evan Laird on 2/29/16.
//  Copyright © 2016 Evan Laird. All rights reserved.
//

import UIKit

class BooksTableCell: UITableViewCell {
    
    @IBOutlet weak var bookTitle: UILabel!
    @IBOutlet weak var bookDescription: UILabel!
    @IBOutlet weak var bookImage: UIImageView!
    @IBOutlet weak var bookLink: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(book: Books) {
        bookTitle.text = book.title
        bookDescription.text = book.bookDescription
        bookImage.image = book.getBookImage()
        bookLink.text = book.link
        
        bookImage.layer.cornerRadius = 5.0
        bookImage.clipsToBounds = true 
        
    }
}
