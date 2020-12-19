//
//  MovieDetailsVCRouter.swift
//  TheAir
//
//  Created by Amr Mohamed on 12/19/20.
//  Copyright © 2020 Amr Mohamed. All rights reserved.
//

import UIKit

class MovieDetailsVCRouter {
    
    class func creatMovieDetailsVC(movie: Movie, movieInteractor: MovieInteractor) -> UIViewController {
        
        let movieDetails = mainStoryboard.instantiateViewController(withIdentifier: "MovieDetailsVC")
        
        if let movieDetails = movieDetails as? MovieDetailsDelegate {
            
            let router = MovieDetailsVCRouter()
            
            let presenter = MovieDetailsPresenter(movie: movie, view: movieDetails, interactor: movieInteractor, router: router)
            
            movieDetails.presenter = presenter
        }
        return movieDetails
    }
    
    class var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
    
}
