//
//  MyCollectionViewCell.swift
//  TabStove
//
//  Created by rex on 14/07/2017.
//  Copyright © 2017 Huijunorg. All rights reserved.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
  
  var titleLabel: UILabel!
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    self.backgroundColor = UIColor.blue
    let w = self.bounds.width
    print(w)
    
    titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: w/3-10, height: 40))
    titleLabel.textAlignment = .center
    titleLabel.textColor = UIColor.orange
    self.addSubview(titleLabel)
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
  
}
