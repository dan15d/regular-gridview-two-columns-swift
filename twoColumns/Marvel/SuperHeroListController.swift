//
//  SuperHeroListController.swift
//  Marvel
//
//  Created by Daniel Feito on 19/9/17.
//  Copyright © 2017 Daniel Feito. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class SuperHeroListController: UICollectionViewController , UICollectionViewDelegateFlowLayout  {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        marginRowUp()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 40
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! SuperHeroCell
    
    
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    
        let cellsAcross:CGFloat=2
        let spaceBetweenCells:CGFloat=0
    
    
       
    
        let dim=((self.view.bounds.size.width-10) - (cellsAcross-1) * spaceBetweenCells) / cellsAcross
        
        // 2 columns 5
        // 3 columns 3.1
         let margin = CGFloat(5)
    
        return CGSize(width:dim+margin,height:dim)
    
    }
    
    func marginRowUp(){
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.itemSize = CGSize(width: screenWidth/2, height: screenWidth/2)
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        
        collectionView!.collectionViewLayout = layout
    }
    
   
    

}
