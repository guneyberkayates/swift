//
//  SettingViewController.swift
//  InstaCloneFirebase
//
//  Created by Güney Berkay  on 30.08.2022.
//

import UIKit
import Firebase

class SettingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logoutClicked(_ sender: Any) {
        do{
       try Auth.auth().signOut()
            self.performSegue(withIdentifier: "toViewController", sender: nil)
        }
        catch{
            print("Error")
            
        }
        
    }
    
    
}
