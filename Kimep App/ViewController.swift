//
//  ViewController.swift
//  Kimep App
//
//  Created by Erzhan Taipov on 30.11.2021.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    let path = UIBezierPath()
    let someLayer = CAShapeLayer()
    let backGroundGradient = CAGradientLayer()
    
    let buttonGradient = CAGradientLayer()
    
    let logoImageView = UIImageView()
    
    let loginLabel = UILabel()
    
    
    
    let emailTextField = UITextField()
    
    let passTextField = UITextField()
    
    let logInButton = ActualGradientButton()
    
    let userImageView = UIImageView()
    
    let centeredParagraphStyle = NSMutableParagraphStyle()
    
//    lazy var idStack = UIStackView(arrangedSubviews: [userImageView, emailTextField])
    
    let emailTextFieldView = UIView()
    
    let passTextFieldView = UIView()
    
    let passImageView = UIImageView()
    
    let errorLabel = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUpViews()
        setUpConstraints()
    }

    func setUpViews(){
        
        
        drawFigure()
        view.layer.addSublayer(backGroundGradient)
        
        logoImageView.image = UIImage(named: "Kimep Logo")
        logoImageView.frame = CGRect(x: 0, y: 0, width: 154, height: 230)
        logoImageView.contentMode = .scaleAspectFit
        logoImageView.layer.masksToBounds = true
//        view.layer.addSublayer(logoImageView.layer)
        view.addSubview(logoImageView)
        
        loginLabel.text = "Login"
        loginLabel.font = UIFont.boldSystemFont(ofSize: 24)
        loginLabel.textColor = Colors.introTextColor
        
        view.addSubview(loginLabel)
        
        userImageView.image = UIImage(named: "User")
        passImageView.image = UIImage(named: "Lock")
        
        [userImageView,passImageView].forEach { (imgView) in
            imgView.frame = CGRect(x: 0, y: 0, width: 24, height: 24)
            imgView.contentMode = .scaleAspectFit
            imgView.layer.masksToBounds = true
        }
            
        [emailTextField, passTextField].forEach { (ttextField) in
            
            ttextField.textColor = Colors.introTextColor
            ttextField.font = UIFont.boldSystemFont(ofSize: 16)
            ttextField.setLeftPaddingPoints(20)
            
            
        }
        
        
        
//        emailTextField.leftView = userImageView
//        emailTextField.leftViewMode = UITextField.ViewMode.always
        
        centeredParagraphStyle.alignment = .left
        emailTextField.attributedPlaceholder = NSAttributedString(
            string: "Student's ID",
            attributes: [NSAttributedString.Key.foregroundColor: Colors.introTextColor, .paragraphStyle: centeredParagraphStyle, .font: UIFont.boldSystemFont(ofSize: 16)]
    
            
        )
        
        passTextField.attributedPlaceholder = NSAttributedString(
            string: "Password",
            attributes: [NSAttributedString.Key.foregroundColor: Colors.introTextColor, .paragraphStyle: centeredParagraphStyle, .font: UIFont.boldSystemFont(ofSize: 16)]
       
        )
        
        emailTextField.backgroundColor = .white
        
        
        
      
        
//        emailTextField.addShadow()
        
        
//        view.addSubview(emailTextField)
//
//        emailTextField.addSubview(userImageView)
        
        
//        idStack.backgroundColor = .green
//        idStack.distribution = .fill
//
//        view.addSubview(idStack)
        
        [emailTextFieldView,passTextFieldView].forEach{ (vview) in
            
            vview.addShadow2()
            
            vview.backgroundColor = .white
            
            
        }
        
        
        
        emailTextFieldView.addSubview(userImageView)
        
        emailTextFieldView.addSubview(emailTextField)
        
        view.addSubview(emailTextFieldView)
        
        
        passTextFieldView.addSubview(passImageView)
        
        passTextFieldView.addSubview(passTextField)
        
        view.addSubview(passTextFieldView)
        
        
        logInButton.setTitle("Log In", for: .normal)
        logInButton.setTitleColor(.black, for: .normal)
        logInButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        logInButton.addShadow()
        
        

        buttonGradient.frame = logInButton.bounds

        buttonGradient.colors = [Colors.colorLeft.cgColor,Colors.colorRight.cgColor]
        //Use diffrent colors

        buttonGradient.startPoint = CGPoint(x: 0.0, y: 1.0)
        buttonGradient.endPoint = CGPoint(x: 1.0, y: 1.0)

      
        logInButton.layer.insertSublayer(buttonGradient, at: 0)
        logInButton.layer.addSublayer(buttonGradient)
       
        
        
        view.addSubview(logInButton)
        
        
        
        
        
        
    }
    
    func setUpConstraints() {
        
        
        
        logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        logoImageView.setAnchor(top: view.safeTopAnchor, left: nil, bottom: nil, right: nil, paddingTop: 40, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 154, height: 230) //h: 230)
        loginLabel.setAnchor(top: logoImageView.bottomAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 75, paddingLeft: 54, paddingBottom: 0, paddingRight: 0, width: 61, height: 28)
        
        emailTextFieldView.setAnchor(top: loginLabel.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 40, paddingLeft: 54, paddingBottom: 0, paddingRight: 54, height: 54)
        
        userImageView.setAnchor(top: nil, left: emailTextFieldView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 24, paddingBottom: 0, paddingRight: 0, width: 24, height: 24)
        userImageView.centerYAnchor.constraint(equalTo: emailTextFieldView.centerYAnchor).isActive = true
        
        
        emailTextField.setAnchor(top: emailTextFieldView.topAnchor, left: userImageView.rightAnchor, bottom: emailTextFieldView.bottomAnchor, right: emailTextFieldView.rightAnchor, paddingTop: 0, paddingLeft: 2, paddingBottom: 0, paddingRight: 0)
        
        passTextFieldView.setAnchor(top: emailTextFieldView.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 24, paddingLeft: 54, paddingBottom: 0, paddingRight: 54, height: 54)
        
       
        passImageView.setAnchor(top: nil, left: passTextFieldView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 24, paddingBottom: 0, paddingRight: 0, width: 24, height: 24)
        passImageView.centerYAnchor.constraint(equalTo: passTextFieldView.centerYAnchor).isActive = true
        
        passTextField.setAnchor(top: passTextFieldView.topAnchor, left: passImageView.rightAnchor, bottom: passTextFieldView.bottomAnchor, right: passTextFieldView.rightAnchor, paddingTop: 0, paddingLeft: 2, paddingBottom: 0, paddingRight: 0)
        
        logInButton.setAnchor(top: nil, left: view.leftAnchor, bottom: view.safeBottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 54, paddingBottom: -54, paddingRight: 54,  height: 54)
        
        
//        idStack.setAnchor(top: loginLabel.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 40, paddingLeft: 54, paddingBottom: 0, paddingRight: 54, height: 54)
        
        
        
//        emailTextField.setAnchor(top: loginLabel.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 40, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 305, height: 54)
//        emailTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//
//        userImageView.setAnchor(top: nil, left: emailTextField.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 24, paddingBottom: 0, paddingRight: 0, width: 24, height: 24)
//        userImageView.centerYAnchor.constraint(equalTo: emailTextField.centerYAnchor).isActive = true
        
       
    }
    
    @objc func logInButtonTapped(_ sender: UIButton) {
        
        
//        let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
//        let password = passTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
//        
//        // Signing in the user
//        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
//            
//            if error != nil {
//                // Couldn't sign in
//                self.errorLabel.text = error!.localizedDescription
//                self.errorLabel.alpha = 1
//            }
//            else {
//                
//                let homeViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeViewController) as? HomeViewController
//                
//                self.view.window?.rootViewController = homeViewController
//                self.view.window?.makeKeyAndVisible()
//            }
//        }
        
        
        
    }
     
    func drawFigure() {
        
        
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: view.frame.width, y: 0))
        path.addLine(to: CGPoint(x: view.frame.width, y: view.frame.height/2 - 30))
        path.addLine(to: CGPoint(x: 0, y: view.frame.height/2 - 100))
        path.close()
        
        
      
        let col =  UIColor.green
        col.setFill()
        path.fill()
        path.close()
        
        someLayer.path = path.cgPath
        
        
        someLayer.fillColor = UIColor.orange.cgColor
        
        backGroundGradient.frame = path.bounds
        backGroundGradient.colors = [ Colors.colorTop, Colors.colorBottom]

        backGroundGradient.mask = someLayer
        
        
        
    }
    
    func setGradientBackground() {
       
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [Colors.colorTop, Colors.colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds
                
        self.view.layer.insertSublayer(gradientLayer, at:0)
    }
    

}
extension UIView {
func addShadow(shadowColor: CGColor = UIColor.black.cgColor,
                   shadowOffset: CGSize = CGSize(width: 1.0, height: 2.0),
                   shadowOpacity: Float = 0.4,
                   shadowRadius: CGFloat = 3.0) {
        layer.shadowColor = shadowColor
        layer.shadowOffset = shadowOffset
        layer.shadowOpacity = shadowOpacity
        layer.shadowRadius = shadowRadius
        layer.masksToBounds = false
    }
    
    func addShadow2(shadowColor: CGColor = UIColor.black.cgColor,
                       shadowOffset: CGSize = CGSize(width: 1.0, height: 2.0),
                       shadowOpacity: Float = 0.1,
                       shadowRadius: CGFloat = 3.0) {
            layer.shadowColor = shadowColor
            layer.shadowOffset = shadowOffset
            layer.shadowOpacity = shadowOpacity
            layer.shadowRadius = shadowRadius
            layer.masksToBounds = false
        }
}
extension UITextField {
    func setLeftPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    func setRightPaddingPoints(_ amount:CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.rightView = paddingView
        self.rightViewMode = .always
    }
}
extension UIButton
{
    func applyGradient(colors: [CGColor])
    {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = colors
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 0)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}


