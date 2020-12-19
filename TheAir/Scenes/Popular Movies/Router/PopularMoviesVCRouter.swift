//
//  PopularMoviesVCRouter.swift
//  TheAir
//
//  Created by Amr Mohamed on 12/18/20.
//  Copyright © 2020 Amr Mohamed. All rights reserved.
//

import UIKit

class PopularMoviesVCRouter {
    
    class func createPopularMoviesVC() -> UIViewController {
        
        let tabBar = mainStoryboard.instantiateViewController(withIdentifier: "MainUITabBarController") as! UITabBarController
        let navigationController = tabBar.viewControllers?.first as? UINavigationController
        
        if let viewController = navigationController?.viewControllers.first as? PopularMoviesVC {
            let router = PopularMoviesVCRouter()
            let interactor = MovieInteractor()
            let presenter = PopularMoviesPresenter(view: viewController, router: router, interactor: interactor)
            viewController.presenter = presenter
        }
        
        return tabBar
    }
    
    class var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
    
    func navigateToMovieDetails(from view: PopularMoviesDelegate, movie: Movie, movieInteractor: MovieInteractor) {
        let userDetailsView = MovieDetailsVCRouter.creatMovieDetailsVC(movie: movie, movieInteractor: movieInteractor)
        if let viewController = view as? UIViewController {
            viewController.navigationController?.pushViewController(userDetailsView, animated: true)
        }
    }
}
