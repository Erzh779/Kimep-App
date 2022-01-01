//
//  SecondClassesTableViewCell.swift
//  Kimep App
//
//  Created by Erzhan Taipov on 21.12.2021.
//

import UIKit

class SecondClassesTableViewCell: UITableViewCell {

    
    let titleLabel = UILabel()
    let professorNameLabel = UILabel()
    let timeLabel = UILabel()
    let periodLabel = UILabel()
    let sectionLabel = UILabel()
    
    
    
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
        
        backgroundColor = .white
        setUpViews()
        setUpConstraints()
        
       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpViews() {
        
       
        titleLabel.textColor = Colors.cardSubtitleColor
        titleLabel.font = UIFont.boldSystemFont(ofSize: 20)
        titleLabel.textAlignment = .left
        
        contentView.addSubview(titleLabel)
        
        professorNameLabel.textColor = Colors.grayText
        professorNameLabel.font = UIFont.systemFont(ofSize: 18)
        
        contentView.addSubview(professorNameLabel)
        
        periodLabel.textColor = Colors.grayText
        periodLabel.font = UIFont.systemFont(ofSize: 14)
        
        contentView.addSubview(periodLabel)
        
        timeLabel.textColor = Colors.timeColor
        timeLabel.font = UIFont.systemFont(ofSize: 20)
        
        contentView.addSubview(timeLabel)
        
        sectionLabel.textColor = Colors.sectionColor
        sectionLabel.font = UIFont.systemFont(ofSize: 14)
        
        contentView.addSubview(sectionLabel)
        
        
        
       
        
       
        
        
        
        
        
    }
    
    func setUpConstraints() {

        titleLabel.setAnchor(top: contentView.topAnchor, left: contentView.leftAnchor, bottom: nil, right: contentView.rightAnchor, paddingTop: 24, paddingLeft: 16, paddingBottom: 0, paddingRight: 0)
        professorNameLabel.setAnchor(top: titleLabel.bottomAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 16, paddingLeft: 16, paddingBottom: 0, paddingRight: 0)
        periodLabel.setAnchor(top: nil, left: leftAnchor, bottom: bottomAnchor, right: nil, paddingTop: 16, paddingLeft: 16, paddingBottom: -24, paddingRight: 0)
        timeLabel.setAnchor(top: nil, left: nil, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 24)
        timeLabel.centerYAnchor.constraint(equalTo: professorNameLabel.centerYAnchor).isActive = true
        sectionLabel.setAnchor(top: nil, left: nil, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 24)
        sectionLabel.centerYAnchor.constraint(equalTo: periodLabel.centerYAnchor).isActive = true
        
        
        
       
        
    }
    
    func generateCells(model: ClassesModel) {
        

        
        titleLabel.text = model.title
        professorNameLabel.text = model.professor
        periodLabel.text = model.period
        timeLabel.text = model.time
        sectionLabel.text = model.section
        
       
        
    }


}
