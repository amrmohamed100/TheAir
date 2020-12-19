//
//  FavouriteMoviesVC+CollectionViewDelegate.swift
//  TheAir
//
//  Created by Amr Mohamed on 12/18/20.
//  Copyright © 2020 Amr Mohamed. All rights reserved.
//

import UIKit

extension FavouriteMoviesVC: UICollectionViewDelegate {

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        presenter.didSelectMovie(at: indexPath.row)
        
    }
}
