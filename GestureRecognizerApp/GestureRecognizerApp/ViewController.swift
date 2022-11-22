//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Güney Berkay  on 16.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    var isMorty = true
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    @objc func changePic() {
        if isMorty == true {
            imageView.image = UIImage(named: "rick")
            myLabel.text = "Rick"
            isMorty = false
        }
        else {
            imageView.image = UIImage(named: "morty")
            myLabel.text = "Morty"
            isMorty = true
        }
       
        
    }


}

