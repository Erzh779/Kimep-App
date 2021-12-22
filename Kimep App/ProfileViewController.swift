//
//  ProfileViewController.swift
//  Kimep App
//
//  Created by Erzhan Taipov on 07.12.2021.
//

import UIKit

class ProfileViewController: UIViewController {

    let backGroundGradient = CAGradientLayer()
    
    let profileImageView = UIImageView()
    
    let profileImage = UIImage(named: "ProfileImage")
    
    let nameView = UIView()
    
    let nameLabel = UILabel()
    
    let whiteView = UIView()
    
    let profileTableView = UITableView(frame: .zero, style: .grouped)
    
    let infoArray = [ProfileModel(title: "Program", subtitle: "Bisb"),ProfileModel(title: "GPA", subtitle: "4.06"),ProfileModel(title: "Student's ID", subtitle: "20201161"),ProfileModel(title: "Credits Taken", subtitle: "37"),ProfileModel(title: "Credits Earned", subtitle: "37")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpViews()
        setUpTableView()
        setUpConstraints()


    }
    
    func setUpViews() {
        
        //        title = "Profile"
        backGroundGradient.frame = view.bounds
        backGroundGradient.colors = [ Colors.colorTop, Colors.colorBottom]
        backGroundGradient.locations = [ 0.0, 1.0]
        view.layer.insertSublayer(backGroundGradient, at: 0)
        
        
        profileImageView.frame = CGRect(x: 0, y: 0, width: 126, height: 126)
        profileImageView.image = profileImage
        profileImageView.layer.borderWidth = 2.0
        profileImageView.layer.masksToBounds = true
        profileImageView.layer.borderColor = UIColor.white.cgColor
        profileImageView.layer.cornerRadius = profileImageView.frame.size.width / 2
        profileImageView.clipsToBounds = true
        
        nameView.backgroundColor = Colors.nameViewColor
        
        nameLabel.text = "Yerzhan Bulatkulov"
        nameLabel.font = UIFont.systemFont(ofSize: 24)
        nameLabel.textAlignment = .center
        nameLabel.textColor = .black
        
        whiteView.backgroundColor = .white
        
        view.addSubview(whiteView)
        
        
        view.addSubview(profileImageView)
         
        
        view.addSubview(nameView)
        
        nameView.addSubview(nameLabel)
        
        view.addSubview(profileTableView)
        
        
        
        
        
        
        
    }
    
    
    func setUpTableView() {
        
        profileTableView.dataSource = self
        profileTableView.delegate = self
        
        profileTableView.register(ProfileTableViewCell.self, forCellReuseIdentifier: "ProfileTableViewCell")
      
        profileTableView.isScrollEnabled = false
        
        profileTableView.tableHeaderView = nil
        profileTableView.tableFooterView = nil
        profileTableView.backgroundColor = .white
        profileTableView.separatorStyle = .none
        
        profileTableView.tableHeaderView = nil
        
        
        
        
        
    }
    
    func setUpConstraints() {
        
        profileImageView.setAnchor(top: view.safeAreaLayoutGuide.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: -40, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 126, height: 126)
        profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        nameView.setAnchor(top: profileImageView.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 20, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, height: 60)
        
        whiteView.setAnchor(top: nameView.bottomAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        
        nameLabel.setAnchor(top: nil, left: nameView.leftAnchor, bottom: nil, right: nameView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        nameLabel.centerYAnchor.constraint(equalTo: nameView.centerYAnchor).isActive = true
        
        
        profileTableView.setAnchor(top: nameView.bottomAnchor, left: view.leftAnchor, bottom: view.safeBottomAnchor, right: view.rightAnchor, paddingTop: -10, paddingLeft: 8, paddingBottom: 0, paddingRight: 8)
        
        
        
        
        
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
extension ProfileViewController : UITableViewDataSource, UITableViewDelegate {
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return infoArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileTableViewCell", for: indexPath) as! ProfileTableViewCell
        cell.selectionStyle = .none
        cell.generateCells(model: infoArray[indexPath.item])
       
     
        return cell
        
        
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.0
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return nil
    }
    
    
}



   
    
    



