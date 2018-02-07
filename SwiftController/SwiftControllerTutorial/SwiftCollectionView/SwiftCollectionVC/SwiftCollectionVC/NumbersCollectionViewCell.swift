//
//  NumbersCollectionViewCell.swift
//  SwiftCollectionVC
//
//  Created by Tom Marler on 1/24/18.
//  Copyright © 2018 Tom Marler. All rights reserved.
//

import UIKit

class NumbersCollectionViewCell: UICollectionViewCell {
    var label: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        
        // Get the mainContent View Frame
        label = UILabel(frame: contentView.frame)
        
        // Add the Lablel to the view and style it
        contentView.addSubview(label)
        label.textAlignment = .center
        label.font = UIFont(name: label.font.fontName, size: 12)
        self.contentView.backgroundColor = .white
    }
}
