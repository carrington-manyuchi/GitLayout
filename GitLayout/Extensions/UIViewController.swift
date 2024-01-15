//
//  UIViewController.swift
//  GitLayout
//
//  Created by DA MAC M1 157 on 2024/01/15.
//

import UIKit

extension UIViewController {

    func UIColorFromRGB(rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    

        
       
    
    
}
