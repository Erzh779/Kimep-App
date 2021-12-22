//
//  ClassesViewController.swift
//  Kimep App
//
//  Created by Erzhan Taipov on 07.12.2021.
//

import UIKit

class ClassesViewController: UIViewController {

    let backgroundGradient = CAGradientLayer()
    
   
    
    let tableView  = UITableView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Classes"
        backgroundGradient.frame = view.bounds
        backgroundGradient.colors = [Colors.colorTop, Colors.colorBottom]
        backgroundGradient.locations = [0.0, 1.0]
        view.layer.insertSublayer(backgroundGradient, at: 0)
        setUpViews()
    }
    
    func setUpViews() {
        
       
        setUpTableView()
        setUpConstraints()
        
        
    }
    
    func setUpConstraints() {
        
        tableView.setAnchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        
    }
    
    
    
    func setUpTableView() {
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = .white
        tableView.register(ClassesTableViewCell.self, forCellReuseIdentifier: "ClassesTableViewCell")
        tableView.register(SecondClassesTableViewCell.self, forCellReuseIdentifier: "SecondClassesTableViewCell")
        tableView.separatorStyle = .singleLine
        
        view.addSubview(tableView)
     
      
        
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

extension ClassesViewController : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            return 1
        case 1:
            return 3
        default:
            return 3
        }
    }
    
    
    
  
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 100
        switch indexPath.section {
            
        case 0:
            return 100
        default:
            return 300
            
        }
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ClassesTableViewCell", for: indexPath) as! ClassesTableViewCell
            cell.selectionStyle = .none
            
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "SecondClassesTableViewCell", for: indexPath) as! SecondClassesTableViewCell
            cell.selectionStyle = .none
            cell.backgroundColor = .white
            
            return cell
    
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "SecondClassesTableViewCell", for: indexPath) as! SecondClassesTableViewCell
            cell.selectionStyle = .none
            return cell
        }
        
    }
    
 
    
    
    
    
    
}
