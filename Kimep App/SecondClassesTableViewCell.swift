//
//  SecondClassesTableViewCell.swift
//  Kimep App
//
//  Created by Erzhan Taipov on 21.12.2021.
//

import UIKit

class SecondClassesTableViewCell: UITableViewCell {

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
        
        backgroundColor = .yellow
       
        
       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
