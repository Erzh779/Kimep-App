//
//  UITextFieldInsetClass.swift
//  Kimep AppUITests
//
//  Created by Erzhan Taipov on 02.12.2021.
//
import UIKit

class TextField: UITextField {

   let inset: CGFloat = 100

   // placeholder position
   override func textRect(forBounds bounds: CGRect) -> CGRect {
       return bounds.insetBy(dx: inset, dy: inset)
   }

   // text position
   override func editingRect(forBounds bounds: CGRect) -> CGRect {
       return bounds.insetBy(dx: inset, dy: inset)
   }
}
