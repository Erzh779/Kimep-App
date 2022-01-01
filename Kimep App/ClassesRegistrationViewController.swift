//
//  ClassesRegistrationViewController.swift
//  Kimep App
//
//  Created by Erzhan Taipov on 27.12.2021.
//

import UIKit

class ClassesRegistrationViewController: UIViewController {

    let backImage = UIImage(named: "backImage")
    
    let whiteView = UIView()
    
    let coursesArray = [RegistrationCategoriesModel(title: "Learning Support Center Programs "),
                        RegistrationCategoriesModel(title: "Foundation Courses"),
                        RegistrationCategoriesModel(title: "Program Foundation Courses"),
                        RegistrationCategoriesModel(title: "General Education Requirements"),
                        RegistrationCategoriesModel(title: "Program Foundation Courses"),
                        RegistrationCategoriesModel(title: "Program Requirements"),
                        RegistrationCategoriesModel(title: "Physical Education")
    ]
    
    let collectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 20
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: 390, height: 60)
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.isScrollEnabled = false
        cv.allowsMultipleSelection = false
        cv.backgroundColor = .white
        
        return cv
    }()
   
    let backgroundGradient = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Registration"
        navigationItem.backButtonTitle = ""
        
        
        
//        navigationController?.navigationBar.backIndicatorImage = backImage
//        navigationController?.navigationBar.backIndicatorTransitionMaskImage = backImage
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.backItem?.backButtonTitle = ""
        backgroundGradient.frame = view.bounds
        backgroundGradient.colors = [Colors.colorTop, Colors.colorBottom]
        backgroundGradient.locations = [0.0, 1.0]
        view.layer.insertSublayer(backgroundGradient, at: 0)
        
        setUpViews()
        setUpConstraints()

    }
    
    func setUpViews() {
        
        whiteView.backgroundColor = .white
        view.addSubview(whiteView)
        
        setUpCollectionView()
        
    }
    
    func setUpConstraints() {
        
        whiteView.setAnchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        collectionView.setAnchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 20, paddingLeft: 12, paddingBottom: 0, paddingRight: 12)
        
    }
    
    func setUpCollectionView() {
        
        collectionView.register(RegistrationCollectionViewCell.self, forCellWithReuseIdentifier: "RegistrationCollectionViewCell")
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = .white
//        collectionView.backgroundColor = .cyan
        
        
        
        view.addSubview(collectionView)
        
    }

    

}



extension ClassesRegistrationViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return coursesArray.count
    }
    

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RegistrationCollectionViewCell", for: indexPath) as! RegistrationCollectionViewCell
        cell.generateCells(model: coursesArray[indexPath.item])
        cell.contentView.addShadow2()
        
        return cell
        
        
        
    }


    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }







}
extension ClassesRegistrationViewController : UICollectionViewDelegateFlowLayout {
    
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: 390, height: 60)
//
//
//
//    }
//
//
//
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 0, bottom: 20, right: 0)
    }

  

    
}


