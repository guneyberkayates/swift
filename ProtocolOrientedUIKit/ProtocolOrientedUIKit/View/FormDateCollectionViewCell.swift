//
//  FormDateCollectionViewCell.swift
//  ProtocolOrientedUIKit
//
//  Created by Güney Berkay  on 25.09.2022.
//

import UIKit
import Combine
class FormDateCollectionViewCell : UICollectionViewCell {
     lazy var datePicker : UIDatePicker = {
        let datePicker = UIDatePicker()
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        return datePicker
    }()
    private var errorLbl : UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textColor = UIColor.systemRed
        lbl.text = ""
        return lbl
        
    }()
    private lazy var contentStackVw : UIStackView = {
        let stackVw = UIStackView()
        stackVw.translatesAutoresizingMaskIntoConstraints = false
        stackVw.axis = .vertical
        stackVw.spacing = 8
        return stackVw
    }()
    
    private var subscription = Set<AnyCancellable>()
    private(set) var subject = PassthroughSubject<(Date,IndexPath),Never>()
    private var item : DateComponent?
    private var indexPath : IndexPath?
    
    
    func bind(_ item : FormComponent,at indexPath : IndexPath){
        guard let item = item as? DateComponent else {return}
        setup(item: item)
        self.indexPath = indexPath
        setup(item: item)
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        removeViews()
    }
}

private extension FormDateCollectionViewCell {
    func setup(item : DateComponent){
        datePicker.datePickerMode = .dateAndTime
        contentView.addSubview(datePicker)
        NSLayoutConstraint.activate([
            datePicker.topAnchor.constraint(equalTo: contentView.topAnchor),
            datePicker.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            datePicker.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            datePicker.leadingAnchor.constraint(equalTo: contentView.trailingAnchor)
        
        ])
    }
    @objc func datePickerChanged(picker : UIDatePicker){
        guard let indexPath = indexPath,
              let item = item else {return}
        let selectedDate = datePicker.date
        self.subject.send((selectedDate,indexPath))

       
    }
}
   
