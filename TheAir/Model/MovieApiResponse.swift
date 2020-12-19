//
//  MovieApiResponse.swift
//  TheAir
//
//  Created by Amr Mohamed on 12/18/20.
//  Copyright © 2020 Amr Mohamed. All rights reserved.
//

import Foundation
import SwiftyJSON

struct MovieApiResponse {
    let page: Int
    let numberOfResults: Int
    let numberOfPages: Int
    let movies: [Movie]
}

extension MovieApiResponse {
    private enum ResponseCodingKeys: String {
        case page
        case numberOfResults = "total_results"
        case numberOfPages = "total_pages"
        case movies = "results"
    }
    
    init(from json: JSON) {
        page = json[ResponseCodingKeys.page.rawValue].intValue
        numberOfResults = json[ResponseCodingKeys.numberOfResults.rawValue].intValue
        numberOfPages = json[ResponseCodingKeys.numberOfPages.rawValue].intValue
        movies = json[ResponseCodingKeys.movies.rawValue].arrayValue.map{Movie(from: $0)}
    }
}
