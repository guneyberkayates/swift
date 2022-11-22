//
//  FormButtonCollectionViewCell.swift
//  natalChartApp
//
//  Created by Güney Berkay  on 27.09.2022.
//

import UIKit
import Combine
class FormButtonCollectionViewCell: UICollectionViewCell {
    private lazy var actionBtn : UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = .systemBlue
        btn.titleLabel?.font = .systemFont(ofSize : 16,weight : .bold)
        return btn
    }()
    private var item : ButtonComponent?
     var subject = PassthroughSubject<FormField, Never>()
    private var subscription = Set<AnyCancellable>()
    
    func bind(_ item: FormComponent){
        guard let item = item as?   ButtonComponent else {return}
        self.item = item
        setup(item : item)
    
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        removeViews()
        item = nil
    }
    
}

private extension FormButtonCollectionViewCell {
    func setup(item : ButtonComponent){
        actionBtn.addTarget(self, action: #selector(actionDidTap),for: .touchUpInside)
        actionBtn.setTitle(item.title, for: .normal)
        contentView.addSubview(actionBtn)
        
        NSLayoutConstraint.activate([
            actionBtn.heightAnchor.constraint(equalToConstant: 44),
            actionBtn.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            actionBtn.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            actionBtn.topAnchor.constraint(equalTo: contentView.topAnchor),
            actionBtn.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
    @objc func actionDidTap(){
        guard let item = item else {return}
        self.subject.send(item.formId)
    }
    
}
