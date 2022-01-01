//
//  ClassesViewController.swift
//  Kimep App
//
//  Created by Erzhan Taipov on 07.12.2021.
//

import UIKit

class ClassesViewController: UIViewController {

    let backgroundGradient = CAGradientLayer()
    
    let collectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 16
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 64, height: 80)
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.allowsMultipleSelection = false
        
        cv.backgroundColor = .clear
        cv.isScrollEnabled = true
        return cv
    }()
    
    let backImage = UIImage(named: "backImage")
   
    
    let addClassButton = UIButton()
    
    
    let daysArray = [DaysModel(date: "18", day: "Mon"),
                     DaysModel(date: "19", day: "Tue"),
                     DaysModel(date: "20", day: "Wed"),
                     DaysModel(date: "21", day: "Thu"),
                     DaysModel(date: "22", day: "Fri"),
                     DaysModel(date: "23", day: "Sat"),
                     DaysModel(date: "24", day: "Sun")
    
    ]
    
    let classesArray = [ClassesModel(title: "Principles of Management", professor: "Alma Alpeisova, DBA", time: "12:00 - 12:50", period: "May 24, 2021 - July 15, 2021", section: "Sec: 2"),
                        ClassesModel(title: "Principles of Management", professor: "Alma Alpeisova, DBA", time: "12:00 - 12:50", period: "May 24, 2021 - July 15, 2021", section: "Sec: 2"),
                        ClassesModel(title: "Principles of Management", professor: "Alma Alpeisova, DBA", time: "12:00 - 12:50", period: "May 24, 2021 - July 15, 2021", section: "Sec: 2"),
                        ClassesModel(title: "Principles of Management", professor: "Alma Alpeisova, DBA", time: "12:00 - 12:50", period: "May 24, 2021 - July 15, 2021", section: "Sec: 2")
                        
    ]
    
   
    
//    let tableView  = UITableView()
    
    let tableView = UITableView(frame: CGRect(x: 0, y: 0, width: 10, height: 50), style: .grouped)
  
   
   
    
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
        
        
        addClassButton.setImage(UIImage(named: "addButtonImage"), for: .normal)
        addClassButton.addTarget(self, action: #selector(ClassesViewController.addClassButtonTapped(_:)), for: .touchUpInside)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: addClassButton)
        
        setUpCollectionView()
        setUpTableView()
        setUpConstraints()
        
        
    }
    
    @objc func addClassButtonTapped(_ sender: UIButton) {
        

        let cv = ClassesRegistrationViewController()
        self.navigationController?.pushViewController(cv, animated: true)
        
    }
    
    func setUpConstraints() {
        
        
        collectionView.setAnchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, height: 110)
        
        
        tableView.setAnchor(top: collectionView.bottomAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        
    }
    
    func setUpCollectionView() {
        
        collectionView.register(ClassesCollectionViewCell.self, forCellWithReuseIdentifier: "ClassesCollectionViewCell")
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = .white
//        collectionView.backgroundColor = .cyan
        
        
        
        view.addSubview(collectionView)
        
    }
    
    
    func setUpTableView() {
        
       
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = .white
     
        tableView.register(SecondClassesTableViewCell.self, forCellReuseIdentifier: "SecondClassesTableViewCell")
        tableView.separatorStyle = .singleLine
        
        view.addSubview(tableView)
     
      
        
    }
    
    

    
}

extension ClassesViewController : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return classesArray.count
//        switch section {
//        case 0:
//            return 2
//        case 1:
//            return 2
//        default:
//            return 3
//        }
    }
    
    
    
  
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 100
//        switch indexPath.section {
//
//        case 0:
//            return 140
//        default:
//            return 120
//
//        }
        
        return 148
        
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: CGFloat.leastNonzeroMagnitude))
//        tableView.tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: CGFloat.leastNonzeroMagnitude)
        header.backgroundColor = Colors.colorRight
        let headerLabel = UILabel()
        headerLabel.font = UIFont.systemFont(ofSize: 24)
        headerLabel.textColor = .black
        headerLabel.textAlignment = .left
        
        
        
//        if section == 0 {
            headerLabel.text = "Fall 2021"
//        }
//        else{
//            headerLabel.text = "Spring 2022"
//        }

        header.addSubview(headerLabel)
        headerLabel.setAnchor(top: nil, left: header.leftAnchor, bottom: nil, right: header.rightAnchor, paddingTop: 0, paddingLeft: 20, paddingBottom: 0, paddingRight: 0)
        headerLabel.centerYAnchor.constraint(equalTo: header.centerYAnchor).isActive = true

        return header
        
    }
    
    
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
//        switch indexPath.section {
            
//        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "SecondClassesTableViewCell", for: indexPath) as! SecondClassesTableViewCell
            cell.selectionStyle = .none
            cell.backgroundColor = .white
            cell.generateCells(model: classesArray[indexPath.item])
           
            
            return cell
    
//        default:
//            let cell = tableView.dequeueReusableCell(withIdentifier: "SecondClassesTableViewCell", for: indexPath) as! SecondClassesTableViewCell
//            cell.selectionStyle = .none
//            return cell
//        }
        
    }
    
 
    
    
    
    
    
}
extension ClassesViewController : UICollectionViewDelegateFlowLayout {
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 64, height: 80)
        
        
        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 12, left: 12, bottom: 12, right: 12)
    }
    
  

    
}
extension ClassesViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return daysArray.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

        let cell = collectionView.cellForItem(at: indexPath)
        cell?.contentView.backgroundColor = Colors.cardSubtitleColor
        cell?.contentView.layoutIfNeeded()
        
//        collectionView.reloadData()
        
//        if indexPath == 0 {
//
//            cell?.backgroundColor = Colors.cardSubtitleColor
//
//        }
//        else {
//
//            cell?.backgroundColor = Colors.grayCard
//
//        }
       
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.contentView.backgroundColor = Colors.grayCard
        cell?.contentView.layoutIfNeeded()
//        collectionView.reloadData()
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ClassesCollectionViewCell", for: indexPath) as! ClassesCollectionViewCell
        cell.contentView.layer.cornerRadius = 10
        cell.generateCells(model: daysArray[indexPath.item])
//        return cell
        
        if (indexPath.row == 0){
            collectionView.selectItem(at: indexPath, animated: true, scrollPosition: UICollectionView.ScrollPosition.top)
                cell.contentView.backgroundColor = Colors.cardSubtitleColor
            }else{
                cell.contentView.backgroundColor = Colors.grayCard
            }
            return cell
    }
    
}

