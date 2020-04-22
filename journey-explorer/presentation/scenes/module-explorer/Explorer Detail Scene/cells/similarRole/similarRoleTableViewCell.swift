//
//  similarRoleTableViewCell.swift
//  journey-explorer
//
//  Created by Tony Varian Yoditanto on 20/04/20.
//  Copyright © 2020 Tony Varian Yoditanto. All rights reserved.
//

import UIKit

protocol similarRoleTableViewCellDelegate {
    func getSimilarExplorer(for similarExplorer: Explorer!)
    func similarRoleTableViewCell(_ similarRoleTableViewCell: similarRoleTableViewCell, collectionView: UICollectionView, didSelect at: IndexPath)
}

class similarRoleTableViewCell: UITableViewCell {

    static let cellID = "similarRoleTableViewCell"
    @IBOutlet weak var collectionView: UICollectionView!
    var explorers = [Explorer]()
    var similarExplorers = [Explorer]()
    var explorer: Explorer!
    var delegate : similarRoleTableViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupCollectionView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setupCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.isPagingEnabled = true
        
        registerCollectionViewCell()
        setupCollectionViewScroll()
    }
    
    func registerCollectionViewCell() {
        let nib = UINib(nibName: "similarRoleCollectionViewCell", bundle: Bundle.main)
        collectionView.register(nib, forCellWithReuseIdentifier: "similarRoleCollectionViewCell")
    }
    
    func setupCollectionViewScroll() {
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
        }
        collectionView.showsHorizontalScrollIndicator = false
        
    }
    
}

// MARK: - UICollectionViewDataSource

extension similarRoleTableViewCell: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        var totalSimilarRole = 0
        let role = explorer.explorerRole
        for index in 1...explorers.count {
            if explorers[index-1].explorerRole == role {
                if explorers[index-1].explorerID != explorer.explorerID {
                    totalSimilarRole += 1
                    similarExplorers.append(explorers[index-1])
                }
            }
        }
        return totalSimilarRole
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "similarRoleCollectionViewCell", for: indexPath) as! similarRoleCollectionViewCell
        cell.similarExplorer = self.similarExplorers[indexPath.row]
        return cell
    }
    
    
}

// MARK: - UICollectionViewDelegate, UICollectionViewDelegateFlowLayout

extension similarRoleTableViewCell: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        delegate?.getSimilarExplorer(for: similarExplorers[indexPath.row])
        delegate?.similarRoleTableViewCell(self, collectionView: collectionView, didSelect: indexPath)
    }

}

