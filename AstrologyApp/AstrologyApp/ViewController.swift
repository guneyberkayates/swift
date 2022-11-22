//
//  ViewController.swift
//  AstrologyApp
//
//  Created by Güney Berkay  on 20.08.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var birthdayText: UITextField!
    let datePicker = UIDatePicker()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickDate()
        // Do any additional setup after loading the view.
    }
    func pickDate(){
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolbar.setItems([doneButton], animated: true)
        birthdayText.inputAccessoryView = toolbar
        birthdayText.inputView = datePicker
        datePicker.datePickerMode = .dateAndTime
    }
    
    @objc func donePressed() {
        birthdayText.text = "\(datePicker.date)"
        self.view.endEditing(true)
    }

}

