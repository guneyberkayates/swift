//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Güney Berkay  on 14.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textName: UITextField!
    @IBOutlet weak var textBirthday: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey:"birthday")
        
        if let myName = storedName as? String {
            nameLabel.text = myName
        }
        if let myBirthday = storedBirthday as? String {
            birthdayLabel.text = myBirthday
        }
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func saveButton(_ sender: Any) {
        
        UserDefaults.standard.set(textName.text!, forKey: "name")
        UserDefaults.standard.set(textBirthday.text!, forKey: "birthday")
        
        nameLabel.text = "Name : \(textName.text!)"
        birthdayLabel.text = "Birthday: \(textBirthday.text!)"
        
        
    }
    
    @IBAction func deleteButton(_ sender: Any) {
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if  (storedName as? String) != nil {
        UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text = "Name:"
            
        }
        if (storedBirthday as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "birthday")
            birthdayLabel.text = "Birthday:"
        }
    }
    
    
}

