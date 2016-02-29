//
//  AddNewVC.swift
//  favoriteBooks
//
//  Created by Evan Laird on 2/26/16.
//  Copyright © 2016 Evan Laird. All rights reserved.
//

import UIKit
import CoreData

class AddNewVC: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var insertTitle: UITextField!
    
    @IBOutlet weak var insertDescription: UITextField!
    
    @IBOutlet weak var insertLink: UITextField!
    
    @IBOutlet weak var bookImage: UIImageView!
    
    @IBOutlet weak var addBook: UIButton!
    
    var imagePicker: UIImagePickerController!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    imagePicker = UIImagePickerController()
    imagePicker.delegate = self

    self.insertTitle.delegate = self
    self.insertDescription.delegate = self
    self.insertLink.delegate = self
        
    addBook.layer.cornerRadius = 5.0
    addBook.clipsToBounds = true
    bookImage.layer.cornerRadius = 5.0
    bookImage.clipsToBounds = true
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        bookImage.image = image
    }
    
    @IBAction func addBookPressed(sender: AnyObject) {
        if let title = insertTitle.text where title != "" {
            
            let app = UIApplication.sharedApplication().delegate as! AppDelegate
            let context = app.managedObjectContext
            let entity = NSEntityDescription.entityForName("Books", inManagedObjectContext: context)!
            let book = Books(entity: entity, insertIntoManagedObjectContext: context)
            book.title = title
            book.bookDescription = insertDescription.text
            book.link = insertLink.text
            book.setBookImage(bookImage.image!)
            
            context.insertObject(book)
            
            do {
                try context.save()
            } catch {
                print("Could not save book!")
            }
            
            self.navigationController?.popViewControllerAnimated(true)
        }
    }
    
    @IBAction func addImagePressed(sender: AnyObject!) {
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    
    
}
















