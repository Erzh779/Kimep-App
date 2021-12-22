//
//  FirstGradesTableViewCell.swift
//  Kimep App
//
//  Created by Erzhan Taipov on 11.12.2021.
//

import UIKit

class FirstGradesTableViewCell: UITableViewCell {

    let titleLabel = UILabel()
    let totalGradeLabel = UILabel()
    let firstGradeLabel = UILabel()
    let secondGradeLabel = UILabel()
    let thirdGradeLabel = UILabel()
    
    
   


    
    
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
        
       
        titleLabel.textColor = .black
        titleLabel.font = UIFont.boldSystemFont(ofSize: 20)
        titleLabel.textAlignment = .left
        
        contentView.addSubview(titleLabel)
        
        [firstGradeLabel,secondGradeLabel,thirdGradeLabel].forEach { grade in
            
            grade.textColor = Colors.cardSubtitleColor
            grade.font = UIFont.systemFont(ofSize: 20)
            contentView.addSubview(grade)
            
        }
        
        totalGradeLabel.textColor = Colors.totalGradeColor
        totalGradeLabel.font = UIFont.boldSystemFont(ofSize: 20)
        
        contentView.addSubview(totalGradeLabel)
        
        
        
        
        
    }
    
    func setUpConstraints() {

        titleLabel.setAnchor(top: contentView.topAnchor, left: contentView.leftAnchor, bottom: nil, right: contentView.rightAnchor, paddingTop: 24, paddingLeft: 16, paddingBottom: 0, paddingRight: 0)
        
        firstGradeLabel.setAnchor(top: nil, left: contentView.leftAnchor, bottom: contentView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 16, paddingBottom: -24, paddingRight: 0)
        
        secondGradeLabel.setAnchor(top: nil, left: firstGradeLabel.rightAnchor, bottom: contentView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 40, paddingBottom: -24, paddingRight: 0)
        
        thirdGradeLabel.setAnchor(top: nil, left: secondGradeLabel.rightAnchor, bottom: contentView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 40, paddingBottom: -24, paddingRight: 0)
        
        totalGradeLabel.setAnchor(top: nil, left: nil, bottom: contentView.bottomAnchor, right: contentView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: -24, paddingRight: 16)
        
        
    }
    
    func generateCells(model: GradesModel) {
        

        
        titleLabel.text = model.title
        totalGradeLabel.text = model.totalGrade
        firstGradeLabel.text = String(format: "%.2f", model.firstGrade)
        secondGradeLabel.text = String(format: "%.2f", model.secondGrade)
        thirdGradeLabel.text = String(format: "%.2f", model.thirdGrade)
        
        
    }


}
