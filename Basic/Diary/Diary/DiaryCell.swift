//
//  DiaryCell.swift
//  Diary
//
//  Created by 권성은 on 2021/11/04.
//

import UIKit

class DiaryCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    required init?(coder: NSCoder) {
      super.init(coder: coder)
      self.contentView.layer.cornerRadius = 3.0
      self.contentView.layer.borderWidth = 1.0
      self.contentView.layer.borderColor = UIColor.black.cgColor
    }
}
