//
//  RoundButton.swift
//  Storyboard
//
//  Created by Enrique Gomez Tagle on 19/06/23.
//

import UIKit

@IBDesignable

class RoundButton: UIButton {
    @IBInspectable var cornerRadius: CGFloat = 0{
            didSet{
            self.layer.cornerRadius = cornerRadius
            }
        }

    @IBInspectable var borderWidth: CGFloat = 0{
        didSet{
            self.layer.borderWidth = borderWidth
        }
    }

    @IBInspectable var borderColor: UIColor = UIColor.clear{
        didSet{
            self.layer.borderColor = borderColor.cgColor
        }
    }
}
