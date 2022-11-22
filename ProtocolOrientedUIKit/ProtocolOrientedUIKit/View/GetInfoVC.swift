//
//  GetInfoVC.swift
//  ProtocolOrientedUIKit
//
//  Created by Güney Berkay  on 25.09.2022.
//

import UIKit
import Combine
class GetInfoVC: UIViewController {
    
    private lazy var formContentBuilder = FormContentBuilder()
    private lazy var formCompLayout = formCompositionalLayout()
    private lazy var dataSource = makeDataSource()
    
    private var subscriptions = Set<AnyCancellable>()
    
    private lazy var collectionVw : UICollectionView = {
        let cv = UICollectionView(frame: .zero,collectionViewLayout: formCompLayout.layout)
        cv.backgroundColor = .clear
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.register(UICollectionViewCell.self, forCellWithReuseIdentifier: UICollectionViewCell.cellId)
        cv.register(FormButtonCollectionViewCell.self, forCellWithReuseIdentifier: FormButtonCollectionViewCell.cellId)
        cv.register(FormTextCollectionViewCell.self, forCellWithReuseIdentifier: FormTextCollectionViewCell.cellId)
        cv.register(FormDateCollectionViewCell.self, forCellWithReuseIdentifier: FormDateCollectionViewCell.cellId)
        return cv
    }()
    

    override func loadView() {
        super.loadView()
        setup()
        updateDataSource()
        newUserSubscription()

    }}
    private extension GetInfoVC {
        func updateDataSource(animated : Bool = false) {
            
        DispatchQueue.main.async {[weak self] in
            guard let self = self else {return}
                
            
            var snapshot = NSDiffableDataSourceSnapshot<FormSectionComponent, FormComponent>()
            
            let formSections = self.formContentBuilder.formContent
            snapshot.appendSections(formSections)
            formSections.forEach { snapshot.appendItems($0.items,toSection: $0)}
                self.dataSource.applySnapshotUsingReloadData(snapshot)
            }
            
        }
        func makeDataSource() -> UICollectionViewDiffableDataSource<FormSectionComponent,FormComponent> {
            return UICollectionViewDiffableDataSource(collectionView: collectionVw){ [weak self] collectionVw, indexPath,item in
            
                guard let self = self else {
                    let cell = collectionVw.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
                    return cell
                }
                
                switch item {
                case is TextFormComponent :
                    let cell = collectionVw.dequeueReusableCell(withReuseIdentifier: FormTextCollectionViewCell.cellId,
                    for: indexPath) as! FormTextCollectionViewCell
                    cell
                        .subject
                        .sink {[weak self] val, IndexPath in
                            self?.formContentBuilder.update(val: val, at: IndexPath)
                        }
                        .store(in: &self.subscriptions)
                    cell.bind(item,at : indexPath)
                    return cell
                    
                case is DateComponent :
                    let cell = collectionVw.dequeueReusableCell(withReuseIdentifier: FormDateCollectionViewCell.cellId,
                    for: indexPath) as! FormDateCollectionViewCell
                    cell
                        .subject
                        .sink {[weak self] val , indexPath in
                            self?.formContentBuilder.update(val: val, at: indexPath)
                        }
                        .store(in : &self.subscriptions)
                    cell.bind(item, at : indexPath)
                    return cell
                    
                case is ButtonComponent:
                    let cell = collectionVw.dequeueReusableCell(withReuseIdentifier: FormButtonCollectionViewCell.cellId,
                    for: indexPath) as! FormButtonCollectionViewCell
                    cell
                        .subject 
                        .sink{[weak self] formId in
                    switch formId {
                    case .submit:
                        
                        self?.formContentBuilder.validate()
                    default:
                        break
                    }
                }
                    .store(in: &self.subscriptions)
                    cell.bind(item)
                    return cell
                default:
                    let cell = collectionVw.dequeueReusableCell(withReuseIdentifier:"Cell", for: indexPath)
                    return cell }
                }
            
        
            
        }
    
}

private extension GetInfoVC {
    func setup(){
        view.backgroundColor = .white
        
        collectionVw.dataSource = dataSource
        view.addSubview(collectionVw)
        
        NSLayoutConstraint.activate([
            collectionVw.topAnchor.constraint(equalTo: view.topAnchor),
            collectionVw.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            collectionVw.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionVw.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
        ])
    }
    func newUserSubscription(){
      
        formContentBuilder
            .user
            .sink {[weak self] val in
                print(val)
                
            }
            .store(in: &subscriptions)
    }}

    
    

    



