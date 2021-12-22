//
//  NewsTableViewCell.swift
//  Kimep App
//
//  Created by Erzhan Taipov on 17.12.2021.
//

import UIKit

class NewsTableViewCell: UITableViewCell {

    let uniNameLabel = UILabel()
    let avaImageView = UIImageView()
    let timeLabel = UILabel()
    let commentLabel = UILabel()
    let postImageView = UIImageView()
    let commentView = UIView()
    let spacingView = UIView()
    
    
    
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
        
        avaImageView.frame = CGRect(x: 0, y: 0, width: 45, height: 45)
        avaImageView.layer.borderWidth = 2.0
        avaImageView.layer.masksToBounds = true
        avaImageView.layer.borderColor = UIColor.white.cgColor
        avaImageView.layer.cornerRadius = avaImageView.frame.size.width / 2
        avaImageView.clipsToBounds = true
        
        uniNameLabel.textColor = .black
        uniNameLabel.font = UIFont.boldSystemFont(ofSize: 18)
        uniNameLabel.textAlignment = .left
        timeLabel.textColor = Colors.grayText
        timeLabel.font = UIFont.systemFont(ofSize: 14)
        timeLabel.textAlignment = .left
        commentLabel.textColor = .black
        commentLabel.font = UIFont.systemFont(ofSize: 20)
        commentLabel.textAlignment = .left
        
        commentView.backgroundColor = Colors.colorRight
        
        postImageView.contentMode = .scaleAspectFill
        
        spacingView.backgroundColor = .white
        
        
        addSubview(avaImageView)
        addSubview(uniNameLabel)
        addSubview(timeLabel)
        addSubview(commentView)
        addSubview(commentLabel)
        addSubview(postImageView)
        addSubview(spacingView)
    }
    
    func setUpConstraints() {
        
        avaImageView.setAnchor(top: topAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 12, paddingLeft: 20, paddingBottom: 0, paddingRight: 0, width: 45, height: 45)
        uniNameLabel.setAnchor(top: topAnchor, left: avaImageView.rightAnchor, bottom: nil, right: rightAnchor, paddingTop: 12, paddingLeft: 8, paddingBottom: 0, paddingRight: 0)
        timeLabel.setAnchor(top: uniNameLabel.bottomAnchor, left: avaImageView.rightAnchor, bottom: nil, right: rightAnchor, paddingTop: 4, paddingLeft: 8, paddingBottom: 0, paddingRight: 0)
        commentView.setAnchor(top: avaImageView.bottomAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 14, paddingLeft: 20, paddingBottom: 0, paddingRight: 0, width: 4, height: 32)
        commentLabel.setAnchor(top: nil, left: commentView.rightAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 14, paddingBottom: 0, paddingRight: 0)
        commentLabel.centerYAnchor.constraint(equalTo: commentView.centerYAnchor).isActive = true
        postImageView.setAnchor(top: commentView.bottomAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 14, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        spacingView.setAnchor(top: postImageView.bottomAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, height: 20)
        
        
        
    }
    
    func generateCells(model: NewsModel) {
        
        uniNameLabel.text = model.name
        avaImageView.image = model.avaImg
        timeLabel.text = model.time
        commentLabel.text = model.comment
        postImageView.image = model.postImg
        
        
    }
   

}
