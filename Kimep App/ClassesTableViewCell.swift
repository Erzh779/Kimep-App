//
//  ClassesTableViewCell.swift
//  Kimep App
//
//  Created by Erzhan Taipov on 21.12.2021.
//

import UIKit

class ClassesTableViewCell: UITableViewCell {

    let collectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 16
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 64, height: 80)
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .clear
        cv.isScrollEnabled = true
        return cv
    }()
    
    let daysArray = [DaysModel(date: "18", day: "Mon"),
                     DaysModel(date: "19", day: "Tue"),
                     DaysModel(date: "20", day: "Wed"),
                     DaysModel(date: "21", day: "Thu"),
                     DaysModel(date: "22", day: "Fri"),
                     DaysModel(date: "23", day: "Sat"),
                     DaysModel(date: "24", day: "Sun")
    
    ]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style : style, reuseIdentifier : reuseIdentifier)
        
       
        setUpViews()
        setUpConstraints()
        
       
        
       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpViews() {
        
        setUpCollectionView()
        
        
        
        
    }
    
    
    func setUpCollectionView() {
        
        
    }
    
    func setUpConstraints() {
        
        collectionView.setAnchor(top: contentView.topAnchor, left: contentView.leftAnchor, bottom: contentView.bottomAnchor, right: contentView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        
    }
    
    
    
    

}




