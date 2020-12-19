//
//  PopularMoviesPresenter.swift
//  TheAir
//
//  Created by Amr Mohamed on 12/18/20.
//  Copyright © 2020 Amr Mohamed. All rights reserved.
//

import Foundation

protocol PopularMoviesDelegate: class {
    func moviesReloadStarted()
    func moviesReloadCompleted()
    func setNavigationItemTitle(_ text: String)
}

class PopularMoviesPresenter: NSObject {
    
    private weak var view: PopularMoviesDelegate!
    private var router: PopularMoviesVCRouter
    private var interactor: MovieInteractor
    
    let moviesCellReuseIdentifier = "MoviesCollectionViewCell"
    var moviesList = [Movie]()
    var page: Int = 1
    private weak var networkManager: NetworkManager!
    
    init(view: PopularMoviesDelegate, router: PopularMoviesVCRouter, interactor: MovieInteractor) {
        self.view = view
        self.router = router
        self.interactor = interactor
        
        moviesType = .popularity
    }
    
    func viewDidLoad() {
        
        moviesType = .popularity
        
        getAllMovies()
    }
    
    var moviesType: PopularMoviesSortType {
        didSet {
            switch moviesType {
            case .popularity:
                view.setNavigationItemTitle("Popular Movies")
            case .releaseDate:
                view.setNavigationItemTitle("Recent Movies")
            case .voteAverage:
                view.setNavigationItemTitle("Top Rated Movies")
            }
        }
    }
    
    func changeSortType(to sortType: PopularMoviesSortType) {
        
        if sortType != moviesType {
            
            moviesType = sortType
            
            page = 1
            
            moviesList.removeAll()
            
            getAllMovies()
        }
    }
    
    func getAllMovies() {
        
        view.moviesReloadStarted()
        
        interactor.getAllMovies(page: page, sortType: moviesType) { [weak self] (movies, error) in
            
            guard let movies = movies else {
                return
            }
            
            self?.page += 1
            
            self?.moviesList.append(contentsOf: movies)
            
            self?.view.moviesReloadCompleted()
        }
    }
    
    func didSelectCell(at index: Int) {
        router.navigateToMovieDetails(from: view, movie: moviesList[index], movieInteractor: interactor)
    }
    
}
