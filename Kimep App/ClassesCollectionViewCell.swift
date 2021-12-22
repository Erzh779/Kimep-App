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
        
        cardView.backgroundColor = Colors.grayCard
        numLabel.textColor = .white
        numLabel.font = UIFont.boldSystemFont(ofSize: 24)
        dayLabel.textColor = .white
        dayLabel.font = UIFont.systemFont(ofSize: 16)
        
        contentView.addSubview(cardView)
        cardView.addSubview(numLabel)
        cardView.addSubview(dayLabel)
        
        
    }
    
    func setUpConstraints() {
        
        cardView.setAnchor(top: contentView.topAnchor, left: contentView.leftAnchor, bottom: contentView.bottomAnchor, right: contentView.rightAnchor, paddingTop: 12, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, height: 80)
        numLabel.setAnchor(top: cardView.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 8, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        numLabel.centerXAnchor.constraint(equalTo: cardView.centerXAnchor).isActive = true
        
        dayLabel.setAnchor(top: numLabel.bottomAnchor, left: nil, bottom: contentView.bottomAnchor, right: nil, paddingTop: 4, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        
        dayLabel.centerXAnchor.constraint(equalTo: cardView.centerXAnchor).isActive = true
        
        
        
    }
    
    
    
    func generateCells(model : DaysModel) {
        
        numLabel.text = model.date
        dayLabel.text = model.day
        
    }
    
}
