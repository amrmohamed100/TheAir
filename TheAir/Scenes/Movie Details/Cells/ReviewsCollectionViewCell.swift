//
//  ReviewsCollectionViewCell.swift
//  TheAir
//
//  Created by Amr Mohamed on 12/19/20.
//  Copyright © 2020 Amr Mohamed. All rights reserved.
//

import UIKit

class ReviewsCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var authorImageView: UIImageView!
    
    @IBOutlet weak var authorLabel: UILabel!
    
    @IBOutlet weak var contentTextView: UITextView!
    
    var review: Review! {
        didSet {
            authorLabel.text = review.author
            contentTextView.text = review.content
            authorImageView.image = UIImage.defaultUser()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.layer.cornerRadius = 10
        self.layer.masksToBounds = true
        
        contentTextView.layer.cornerRadius = 10
        
        authorImageView.layer.cornerRadius = authorImageView.bounds.width / 2
        
    }

}
