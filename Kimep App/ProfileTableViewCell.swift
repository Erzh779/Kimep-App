//
//  ProfileTableViewCell.swift
//  Kimep App
//
//  Created by Erzhan Taipov on 08.12.2021.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {

    
    let cardView = UIView()
    
    let cardTitleLabel = UILabel()
    
    let cardSubtitleLabel = UILabel()
    
   


    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20))
        
        
    }
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style : style, reuseIdentifier : reuseIdentifier)
        
       
        setUpViews()
        setUpConstraints()
        
       
        
       
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    func setUpViews() {
        
       
        
        cardTitleLabel.font = UIFont.boldSystemFont(ofSize: 18)
        cardTitleLabel.textColor = .black
        cardSubtitleLabel.font = UIFont.systemFont(ofSize: 20)
        cardSubtitleLabel.textColor = Colors.cardSubtitleColor
        cardTitleLabel.textAlignment = .center
        cardSubtitleLabel.textAlignment = .center
        
        
        
        cardView.addSubview(cardTitleLabel)
        cardView.addSubview(cardSubtitleLabel)
        
        
        
        cardView.backgroundColor = .white
        
        cardView.addShadow2()
        contentView.addSubview(cardView)
        
   
        
        
        
    }
    
    func setUpConstraints() {
        
        cardTitleLabel.setAnchor(top: cardView.topAnchor, left: cardView.leftAnchor, bottom: nil, right: cardView.rightAnchor, paddingTop: 14, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        cardSubtitleLabel.setAnchor(top: cardTitleLabel.bottomAnchor, left: cardView.leftAnchor, bottom: cardView.bottomAnchor, right: cardView.rightAnchor, paddingTop: 8, paddingLeft: 0, paddingBottom: -14, paddingRight: 0)
        cardView.setAnchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 2, paddingLeft: 2, paddingBottom: -10, paddingRight: 2)
        
        
        
    }
    
    func generateCells(model: ProfileModel) {
        
        cardTitleLabel.text = model.title
        cardSubtitleLabel.text = model.subtitle
        
    }
    
}
