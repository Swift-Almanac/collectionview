//
//  MyCollectionViewCell.swift
//  collectionview
//
//  Created by Mark Hoath on 5/10/17.
//  Copyright © 2017 Mark Hoath. All rights reserved.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    let cellLabel = UILabel(frame: CGRect(x: 20, y: 10, width: 50, height: 21))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setUpCell()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpCell() {
        
        addSubview(cellLabel)
        
    }

}


