//
//  RegistrationCollectionViewCell.swift
//  Kimep App
//
//  Created by Erzhan Taipov on 27.12.2021.
//

import UIKit

class RegistrationCollectionViewCell: UICollectionViewCell {
    
    let cardView = UIView()
    let courseTitle = UILabel()
    let rightArrowImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 24, height: 24))
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpViews()
        setUpConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpViews() {
        
        cardView.backgroundColor = .white
        cardView.addShadow2()
        
        contentView.addSubview(cardView)
        
        courseTitle.font = UIFont.boldSystemFont(ofSize: 18)
        courseTitle.textColor = .black
        courseTitle.textAlignment = .left
        cardView.addSubview(courseTitle)
        
        rightArrowImageView.image = UIImage(named: "rightArrow")
        cardView.addSubview(rightArrowImageView)
        
    }
    
    func setUpConstraints() {
        

        cardView.setAnchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 2, paddingBottom: 0, paddingRight: 2)
        courseTitle.setAnchor(top: nil, left: cardView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 20, paddingBottom: 0, paddingRight: 0)
        courseTitle.centerYAnchor.constraint(equalTo: cardView.centerYAnchor).isActive = true
        
        rightArrowImageView.setAnchor(top: nil, left: nil, bottom: nil, right: cardView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 24)
        rightArrowImageView.centerYAnchor.constraint(equalTo: cardView.centerYAnchor).isActive = true
        
    }
    
    func generateCells(model: RegistrationCategoriesModel) {
        
        courseTitle.text = model.title
        
        
        
        
    }
    
}
