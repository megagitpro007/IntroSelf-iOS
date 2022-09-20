//
//  ViewController.swift
//  IntriduceYourSelf
//
//  Created by iZE Appsynth on 19/9/2565 BE.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var textfieldName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileImage.layer.cornerRadius = profileImage.frame.height/2
    }

    @IBAction func didTapSelectImage(_ sender: Any) {
        
    }
    
    @IBAction func didTapChageNamed(_ sender: Any) {
        nameLabel.text = textfieldName.text
        textfieldName.text = ""
    }
}

