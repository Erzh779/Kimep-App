//
//  NewsViewController.swift
//  Kimep App
//
//  Created by Erzhan Taipov on 07.12.2021.
//

import UIKit

class NewsViewController: UIViewController {

    let tableView = UITableView()
    
    let backGroundGradient = CAGradientLayer()
    
    let newsArray = [NewsModel(avaImg: UIImage(named: "Kimep Squared")!, name: "Kimep University", time: "Friday 10:47 pm", comment: "Application is open!", postImg: UIImage(named: "Post")!),
                     NewsModel(avaImg: UIImage(named: "Kimep Squared")!, name: "Kimep University", time: "Friday 10:47 pm", comment: "Application is open!", postImg: UIImage(named: "Post")!),
                     NewsModel(avaImg: UIImage(named: "Kimep Squared")!, name: "Kimep University", time: "Friday 10:47 pm", comment: "Application is open!", postImg: UIImage(named: "Post")!)
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backGroundGradient.frame = view.bounds
        backGroundGradient.colors = [ Colors.colorTop, Colors.colorBottom]
        backGroundGradient.locations = [ 0.0, 1.0]
        view.layer.insertSublayer(backGroundGradient, at: 0)
        title = "News"
        setUpViews()
        setUpTableView()
        setUpConstraints()
        // Do any additional setup after loading the view.
    }
    
    func setUpViews() {
        
        view.addSubview(tableView)
        
    }
    
    func setUpTableView() {
        
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = .white
        tableView.register(NewsTableViewCell.self, forCellReuseIdentifier: "NewsTableViewCell")
        tableView.separatorStyle = .none
      
        
    }
    
    func setUpConstraints() {
        
        tableView.setAnchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        
    }
    
    
    
}
extension NewsViewController : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsArray.count
    }
    

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsTableViewCell", for: indexPath) as! NewsTableViewCell
        cell.generateCells(model: newsArray[indexPath.item])
        cell.selectionStyle = .none
        return cell
    }
    
    
    
    
    
}
