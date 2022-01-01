//
//  GradesViewController.swift
//  Kimep App
//
//  Created by Erzhan Taipov on 07.12.2021.
//

import UIKit

class GradesViewController: UIViewController {

    
    let backGroundGradient = CAGradientLayer()
    
    let firstTableView = UITableView(frame: .zero, style: .grouped)
    
    let secondTableView = UITableView()
    
    
    let gradesArray = [GradesModel(title: "Principles of Marketing", totalGrade: "A+", firstGrade: 30.00, secondGrade: 30.00, thirdGrade: 40.00),
                       GradesModel(title: "Principles of Marketing", totalGrade: "A+", firstGrade: 30.00, secondGrade: 30.00, thirdGrade: 40.00),
                       GradesModel(title: "Principles of Marketing", totalGrade: "A+", firstGrade: 30.00, secondGrade: 30.00, thirdGrade: 40.00)
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        title = "Grades"
        setUpViews()
        setUpConstraints()
       
    }
    

    func setUpViews() {
        
        
        backGroundGradient.frame = view.bounds
        backGroundGradient.colors = [ Colors.colorTop, Colors.colorBottom]
        backGroundGradient.locations = [ 0.0, 1.0]
        view.layer.insertSublayer(backGroundGradient, at: 0)
        setUpTableView()
        view.addSubview(firstTableView)
        
        
        
    }
    
    
   
    
    func setUpTableView() {
        
        firstTableView.dataSource = self
        firstTableView.delegate = self
        
        firstTableView.register(FirstGradesTableViewCell.self, forCellReuseIdentifier: "FirstGradesTableViewCell")
//        firstTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
      
        firstTableView.isScrollEnabled = true
        
        firstTableView.tableHeaderView = nil
        firstTableView.tableFooterView = nil
        firstTableView.backgroundColor = .white
        firstTableView.separatorStyle = .singleLine
        
        
        firstTableView.tableHeaderView = nil
        
        
        
        
        
    }
    
    func setUpConstraints() {
        
        firstTableView.setAnchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        
        
        
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension GradesViewController : UITableViewDataSource, UITableViewDelegate {
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return infoArray.count
        return gradesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FirstGradesTableViewCell", for: indexPath) as! FirstGradesTableViewCell
        cell.selectionStyle = .none
        cell.backgroundColor = .white
        cell.generateCells(model: gradesArray[indexPath.item])
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        cell.textLabel?.text = "section: \(indexPath.section), row: \(indexPath.row)"
//        cell.selectionStyle = .none
     
        return cell
        
            
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
   
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 50))
        header.backgroundColor = Colors.colorRight
        let headerLabel = UILabel()
        headerLabel.font = UIFont.systemFont(ofSize: 24)
        headerLabel.textColor = .black
        headerLabel.textAlignment = .left
        
        
        if section == 0 {
            headerLabel.text = "Fall 2021"
        }
        else{
            headerLabel.text = "Spring 2022"
        }

        header.addSubview(headerLabel)
        headerLabel.setAnchor(top: nil, left: header.leftAnchor, bottom: nil, right: header.rightAnchor, paddingTop: 0, paddingLeft: 20, paddingBottom: 0, paddingRight: 0)
        headerLabel.centerYAnchor.constraint(equalTo: header.centerYAnchor).isActive = true

        return header
        
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "Asshole"
//    }
    
    
}



   
    
    




