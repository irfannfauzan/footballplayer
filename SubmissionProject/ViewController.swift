//
//  ViewController.swift
//  SubmissionProject
//
//  Created by Irfan Fauzan R on 21/11/20.
//  Copyright © 2020 Irfan Fauzan R. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    let bola = [
        (gambar:"buku7",nama:"Ronaldo"),
        (gambar:"buku6",nama:"Frank Lampard"),
        (gambar:"buku5",nama:"Ryan Giigs"),
        (gambar:"buku4",nama:"Steven Gerrad"),
        (gambar:"buku3",nama:"Edn Hazzard"),
    ]

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       collectionView.dataSource = self
        collectionView.delegate = self
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 5
        layout.minimumInteritemSpacing = 5
        collectionView.setCollectionViewLayout(layout, animated: true)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 1.0, left: 1.0, bottom: 1.0, right: 1.0)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let lay = collectionViewLayout as! UICollectionViewFlowLayout
        let widthPerItem = collectionView.frame.width - lay.minimumInteritemSpacing
        return CGSize(width: widthPerItem, height: 150)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return bola.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        let pemainbola = bola [indexPath.row]
        cell.cellLabelView.text = pemainbola.nama
        cell.cellimageView.image = UIImage(named: pemainbola.gambar)
            return cell
    }

}

