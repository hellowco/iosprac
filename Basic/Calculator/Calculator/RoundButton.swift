//
//  RoundButton.swift
//  Calculator
//
//  Created by 권성은 on 2021/11/03.
//

import UIKit

@IBDesignable
class RoundButton: UIButton {
  @IBInspectable var isRound: Bool = false {
    didSet {
      if isRound {
        self.layer.cornerRadius = self.frame.height / 2
      }
    }
  }
}

