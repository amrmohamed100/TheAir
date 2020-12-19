//
//  MovieDetailsPresenter+TableViewDataSource.swift
//  TheAir
//
//  Created by Amr Mohamed on 12/19/20.
//  Copyright © 2020 Amr Mohamed. All rights reserved.
//

import UIKit

extension MovieDetailsPresenter: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return trailers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: trailersCellID, for: indexPath) as! TrailersTableViewCell
        cell.trailer = trailers[indexPath.row]
        return cell
    }
    
}
