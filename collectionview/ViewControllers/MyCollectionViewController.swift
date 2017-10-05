//
//  MyCollectionViewController.swift
//  collectionview
//
//  Created by Mark Hoath on 5/10/17.
//  Copyright © 2017 Mark Hoath. All rights reserved.
//

import UIKit

private let reuseIdentifier = "MyCell"

class MyCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout{
    
    let cellName : [String] = ["cell 1", "cell 2", "cell 3", "cell 4", "cell 5", "cell 6", "cell 7", "cell 8"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        collectionView?.backgroundColor = .white
        
        // Register cell classes
        self.collectionView!.register(MyCollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return cellName.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! MyCollectionViewCell
        
        cell.backgroundColor = .yellow
        cell.cellLabel.text = cellName[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return (CGSize(width: 160, height: 100))
    }
    

}
