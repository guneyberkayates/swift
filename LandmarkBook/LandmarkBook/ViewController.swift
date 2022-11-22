//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Güney Berkay  on 17.08.2022.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate , UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    var landmarkNames = [String]()
    var landmarkImages = [UIImage]()
    
    var chosenLandmarkName = ""
    var chosenLandmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

        landmarkNames.append("Colleseum")
        landmarkNames.append("Göbeklitepe")
        landmarkNames.append("Great Wall")
        landmarkNames.append("Kremlin")
        
        landmarkImages.append(UIImage(named: "colleseum.jpeg")!)
        landmarkImages.append(UIImage(named: "gobeklitepe.jpeg")!)
        landmarkImages.append(UIImage(named: "greatwall.jpeg")!)
        landmarkImages.append(UIImage(named: "kremlin.jpeg")!)

    }
   
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = landmarkNames[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
       chosenLandmarkName = landmarkNames[indexPath.row]
        chosenLandmarkImage = landmarkImages[indexPath.row]

        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedLandmarkName = chosenLandmarkName
            destinationVC.selectedLandmarkImage = chosenLandmarkImage
        }
    }
    
}

