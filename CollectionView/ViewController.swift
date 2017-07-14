//
//  ViewController.swift
//  TabStove
//
//  Created by rex on 14/07/2017.
//  Copyright © 2017 Huijunorg. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
  
  let screenSize = UIScreen.main.bounds.size
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
    print(screenSize)
    
    //render collection view
    
    
    //collection view layout settings
    let layout = UICollectionViewFlowLayout()
    layout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0)
    layout.minimumLineSpacing = 10
    layout.minimumInteritemSpacing = 10
    layout.itemSize = CGSize(width: (screenSize.width - 10.0)/2, height: (screenSize.width - 10.0)/2)
    layout.headerReferenceSize = CGSize(width: screenSize.width, height: 40)
    layout.footerReferenceSize = CGSize(width: screenSize.width, height: 40)
    
    //new collection view
    let myCollectionView = UICollectionView(frame: CGRect(x: 0, y: 20, width: screenSize.width, height: screenSize.height), collectionViewLayout: layout)
    
    //cell settings
    myCollectionView.register(MyCollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
    myCollectionView.register(UICollectionReusableView.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "Header")
    myCollectionView.register(UICollectionReusableView.self, forSupplementaryViewOfKind: UICollectionElementKindSectionFooter, withReuseIdentifier: "Footer")
    
    myCollectionView.delegate = self
    myCollectionView.dataSource = self
    
    self.view.addSubview(myCollectionView)
  }
  
  //collection view delegate
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 7
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! MyCollectionViewCell
    cell.titleLabel.text = "\(indexPath.item)"
    return cell
  }
  
  func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 1
  }
  
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    print("select number \(indexPath.item)")
  }
  
  func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
    var reusableView = UICollectionReusableView()
    
    let label = UILabel(frame: CGRect(x: 10, y: 0, width: screenSize.width, height: 40))
    label.textAlignment = .left
    
    if kind == UICollectionElementKindSectionHeader {
      reusableView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "Header", for: indexPath)
      reusableView.backgroundColor = UIColor.darkGray
      label.text = "Header"
      label.textColor = UIColor.white
    } else if kind == UICollectionElementKindSectionFooter {
      reusableView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionFooter, withReuseIdentifier: "Footer", for: indexPath)
      reusableView.backgroundColor = UIColor.cyan
      label.text = "Footer"
      label.textColor = UIColor.black
    }
    
    reusableView.addSubview(label)
    return reusableView
    
  }
}
