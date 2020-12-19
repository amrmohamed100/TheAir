//
//  PopularMoviesVC+Presenter.swift
//  TheAir
//
//  Created by Amr Mohamed on 12/18/20.
//  Copyright © 2020 Amr Mohamed. All rights reserved.
//

import Foundation
import SVProgressHUD

extension PopularMoviesVC: PopularMoviesDelegate {
    
    func moviesReloadStarted() {
        SVProgressHUD.show()
    }
    
    func moviesReloadCompleted() {
        
        self.moviesCollectionView.reloadData()
        
        SVProgressHUD.dismiss()
    }
    
    func setNavigationItemTitle(_ text: String) {
        navigationItem.title = text
    }
    
}
