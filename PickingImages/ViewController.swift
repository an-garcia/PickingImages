//
//  ViewController.swift
//  PickingImages
//
//  Created by xengar on 2017-11-07.
//  Copyright © 2017 xengar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    // MARK: Outlets
    @IBOutlet weak var ImagePickerView: UIImageView!
    // MARK: Memeber variables
    
    
    // MARK: Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func pickerImage(_ sender: Any) {
        let pickerController = UIImagePickerController()
        pickerController.delegate = self
        pickerController.allowsEditing = false
        pickerController.sourceType = .photoLibrary
        pickerController.mediaTypes = UIImagePickerController.availableMediaTypes(for: .photoLibrary)!
        present(pickerController, animated: true, completion: nil)
    }
    
    
    // MARK: ImagePicker cancel dialog
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil) // dismiss dialog
    }
    
    // MARK: The user selected an image
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        let chosenImage = info[UIImagePickerControllerOriginalImage] as! UIImage // get image

        ImagePickerView.contentMode = .center // scale type
        ImagePickerView.image = chosenImage // set image to view
        dismiss(animated:true, completion: nil) // dismiss dialog
    }
    
}

