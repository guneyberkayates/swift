//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Güney Berkay  on 18.08.2022.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate ,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var mySimpsons = [Simpsons]()
    var chosenSimpson : Simpsons?
    override func viewDidLoad() {
        super.viewDidLoad()
    
        tableView.dataSource = self
        tableView.delegate = self
        
        let homer = Simpsons(initName: "Homer Simpson", initJob: "Nuclear Safety", initImage: UIImage(named: "homer")!)
        let marge = Simpsons(initName: "Marge Simpson", initJob: "Housewife", initImage: UIImage(named: "marge")!)
        let bart = Simpsons(initName: "Bart Simpson", initJob: "Student", initImage: UIImage(named: "bart")!)
        let lisa = Simpsons(initName: "Lisa Simpson", initJob: "Student", initImage: UIImage(named: "lisa")!)

        mySimpsons.append(homer)
        mySimpsons.append(marge)
        mySimpsons.append(bart)
        mySimpsons.append(lisa)
        
        }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = mySimpsons[indexPath.row].name
        cell.contentConfiguration = content
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = mySimpsons[indexPath.row]
        self.performSegue(withIdentifier:"toDetailsVC", sender: nil)    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as? detailsVC
            destinationVC?.selectedSimpson = chosenSimpson
        }

    }
    
    


}

