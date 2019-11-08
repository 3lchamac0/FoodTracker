//
//  ViewController.swift
//  FoodTracker
//
//  Created by formando on 11/10/2019.
//  Copyright © 2019 formando. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate,
        UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var ratingControl: RatingControl!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var mealnameLabel: UILabel!
    
    @IBOutlet var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        nameTextField.delegate = self
    }
    
    //MARK: Actions
    
    @IBAction func selectImageFromPhotoLibrary(_ sender: UITapGestureRecognizer) {
         // Hide the keyboard.
        nameTextField.resignFirstResponder()
        
        // UIImagePickerController is a view controller that lets a user pick media from their photo library.
        let imagePickerController = UIImagePickerController()
        
        // Only allow photos to be picked, not taken.
        imagePickerController.sourceType = .photoLibrary
        
        // Make sure ViewController is notified when the user picks an image.
        imagePickerController.delegate = self
        
        present(imagePickerController, animated: true, completion: nil)
    }
    
        
    //MARK: UIImagePickerControllerDelegate
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
      
        // The info dictionary may contain multiple representations of the image. You want to use the original.
        guard let selectedImage = info[UIImagePickerController.InfoKey.originalImage]
            as? UIImage else {
                fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
            }
        
        // Set photoImageView to display the selected image.
        photoImageView.image = selectedImage
        
        // Dismiss the picker.
        dismiss(animated: true, completion: nil)
    }

}

