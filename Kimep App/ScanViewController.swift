//
//  ScanViewController.swift
//  Kimep App
//
//  Created by Erzhan Taipov on 07.12.2021.
//

import UIKit

class ScanViewController: UIViewController {

    let backgroundGradient = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Scan"
        
        backgroundGradient.frame = view.bounds
        backgroundGradient.colors = [Colors.colorTop, Colors.colorBottom]
        backgroundGradient.locations = [0.0, 1.0]
        view.layer.insertSublayer(backgroundGradient, at: 0)
        
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
