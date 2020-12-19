//
//  TheAirCollectionViewCell.swift
//  TheAir
//
//  Created by Amr Mohamed on 12/18/20.
//  Copyright © 2020 Amr Mohamed. All rights reserved.
//

import UIKit
import ChameleonFramework
import SDWebImage

class MoviesCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!

    @IBOutlet weak var shadowView: UIView!
    
    var movie: Movie! {
        didSet {
            titleLabel.text = movie.title
            
            let url = URL.getTMDBImage(type: .poster(path: movie.posterPath, size: .w342))
//            imageView.sd_addActivityIndicator()
            
            imageView.sd_setImage(with: url, placeholderImage: UIImage(named: "placeholder"), options: [], completed: nil)
            
            self.layoutIfNeeded()
            shadowView.backgroundColor = UIColor.init(gradientStyle: .topToBottom, withFrame: shadowView.frame, andColors: [UIColor.clear, UIColor(white: 0.0, alpha: 0.4), UIColor(white: 0.0, alpha: 0.6)])
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.layer.cornerRadius = 10.0
        self.layer.masksToBounds = true
    }

}
