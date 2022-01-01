//
//  ClassesCollectionViewCell.swift
//  Kimep App
//
//  Created by Erzhan Taipov on 21.12.2021.
//

import UIKit

class ClassesCollectionViewCell: UICollectionViewCell {
    
    let cardView = UIView()
    let numLabel = UILabel()
    let dayLabel = UILabel()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpViews()
        setUpConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    func setUpViews() {
        
        
        contentView.backgroundColor = Colors.grayCard
        cardView.layer.cornerRadius = 10
        numLabel.textColor = .white
        numLabel.font = UIFont.boldSystemFont(ofSize: 24)
        dayLabel.textColor = .white
        dayLabel.font = UIFont.systemFont(ofSize: 16)
        
        contentView.addSubview(cardView)
        contentView.addSubview(numLabel)
        contentView.addSubview(dayLabel)
        
        
    }
    
    func setUpConstraints() {
        
//        cardView.setAnchor(top: nil, left: contentView.leftAnchor, bottom: nil, right: contentView.rightAnchor, paddingTop: 12, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, height: 80)
//        cardView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        numLabel.setAnchor(top: contentView.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 8, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        numLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        
        dayLabel.setAnchor(top: numLabel.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 4, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        
        dayLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        
        
        
    }
    
    
    
    func generateCells(model : DaysModel) {
        
        numLabel.text = model.date
        dayLabel.text = model.day
        
    }
    
}
