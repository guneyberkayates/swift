//
//  ViewController.swift
//  birthChart
//
//  Created by Güney Berkay  on 31.08.2022.
//

import UIKit
import PythonKit

class ViewController: UIViewController {
    @IBOutlet weak var resultText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultText.text = (String("\(runPythonScript())"))
    }


}

