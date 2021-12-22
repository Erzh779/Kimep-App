//
//  ButtonGradient.swift
//  Kimep App
//
//  Created by Erzhan Taipov on 03.12.2021.
//

import UIKit
class ActualGradientButton: UIButton {

    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = bounds
    }

    private lazy var gradientLayer: CAGradientLayer = {
        let l = CAGradientLayer()
        l.frame = self.bounds
        l.colors = [Colors.colorLeft.cgColor, Colors.colorRight.cgColor]
        l.startPoint = CGPoint(x: 0, y: 0.5)
        l.endPoint = CGPoint(x: 1, y: 0.5)
        
        layer.insertSublayer(l, at: 0)
        return l
    }()
}

