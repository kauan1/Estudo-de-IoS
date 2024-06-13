//
//  UICollor+Extension.swift
//  CollectionView
//
//  Created by Administrador  on 31/05/24.
//

import UIKit

extension UIColor{
    class func randomColor(randomAlpha: Bool = false) -> UIColor{
        let redValue = CGFloat(arc4random_uniform(255))/255.0;
        let greenValue = CGFloat(arc4random_uniform(100))/255.0;
        let blueValue = CGFloat(arc4random_uniform(0))/255.0;
        let alphaValue = randomAlpha ? CGFloat(arc4random_uniform(255))/255.0:0.5;
        return UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: alphaValue)
    }
}
