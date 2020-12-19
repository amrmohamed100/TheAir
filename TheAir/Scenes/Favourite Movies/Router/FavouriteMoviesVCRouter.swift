//
//  FavouriteMoviesVCRouter.swift
//  TheAir
//
//  Created by Amr Mohamed on 12/18/20.
//  Copyright © 2020 Amr Mohamed. All rights reserved.
//

import UIKit

class FavouriteMoviesVCRouter {
    
    func navigateToMovieDetails(from view: FavouriteMoviesVCDelegate, movie: Movie, movieInteractor: MovieInteractor) {
        let userDetailsView = MovieDetailsVCRouter.creatMovieDetailsVC(movie: movie, movieInteractor: movieInteractor)
        if let viewController = view as? UIViewController {
            viewController.navigationController?.pushViewController(userDetailsView, animated: true)
        }
    }
    
}
