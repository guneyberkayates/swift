//
//  ViewController.swift
//  ProtocolOrientedUIKit
//
//  Created by Güney Berkay  on 19.09.2022.
//

import UIKit

class UserViewController: UIViewController  ,UserViewModelProtocol{
    func updateView(housesList : String, planets: String) {
        self.housesLabel.text = housesList
        self.planetsLabel.text = planets
        
    }
    
    private let viewModel : UserViewModel
    
    private let housesLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 8
        label.adjustsFontSizeToFitWidth
        label.textAlignment = .left
        return label
    }()
    private let planetsLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 8
        label.adjustsFontSizeToFitWidth
        label.textAlignment = .left
        return label
    }()
   
    init(viewModel : UserViewModel){
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        self.viewModel.output = self
        
    }
    required init?(coder : NSCoder){
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupViews()
        
        
    }
    private func setupViews(){
        view.backgroundColor = .yellow
        view.addSubview(housesLabel)
        view.addSubview(planetsLabel)
       
        
        NSLayoutConstraint.activate([
        
            housesLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            housesLabel.heightAnchor.constraint(equalToConstant: 60),
            housesLabel.widthAnchor.constraint(equalToConstant: 200),
            housesLabel.topAnchor.constraint(equalTo: view.topAnchor,constant: 100),
            
            planetsLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            planetsLabel.heightAnchor.constraint(equalToConstant: 60),
            planetsLabel.widthAnchor.constraint(equalToConstant: 200),
            planetsLabel.topAnchor.constraint(equalTo: housesLabel.bottomAnchor,constant: 80),
            
            
            
            
        ])
       housesLabel.text = "houses label"
       planetsLabel.text = "planets label"
      
        
    }
    
   


}

