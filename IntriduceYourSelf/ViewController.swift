//
//  ViewController.swift
//  IntriduceYourSelf
//
//  Created by iZE Appsynth on 19/9/2565 BE.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var textfieldName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileImage.layer.cornerRadius = profileImage.frame.height/2
    }

    @IBAction func didTapSelectImage(_ sender: Any) {
        self.pickImage(type: .photoLibrary)
    }
    
    @IBAction func didTapChageNamed(_ sender: Any) {
        nameLabel.text = textfieldName.text
        textfieldName.text = ""
    }
}

extension ViewController: UIImagePickerControllerDelegate {
    
    func pickImage(type: UIImagePickerController.SourceType) {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = type
        imagePicker.delegate = self
        imagePicker.allowsEditing = true
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[.originalImage] as? UIImage else { return }
        self.profileImage.image = image
        dismiss(animated: true, completion: nil)
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
}
