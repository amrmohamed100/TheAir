//
//  CastCollectionViewCell.swift
//  TheAir
//
//  Created by Amr Mohamed on 12/19/20.
//  Copyright © 2020 Amr Mohamed. All rights reserved.
//

import UIKit

class CastCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var castImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var characterLabel: UILabel!
    
    var cast: Cast! {
        didSet {
            nameLabel.text = cast.name
            characterLabel.text = cast.character
            
            let url = URL.getTMDBImage(type: .profile(path: cast.profilePath, size: .w45))
            castImageView.sd_setImage(with: url, placeholderImage: UIImage.defaultUser(), options: [], completed: nil)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.layer.cornerRadius = 10
        self.layer.masksToBounds = true
        self.backgroundColor = UIColor.appLightGrey
        
        castImageView.contentMode = .scaleAspectFill
        castImageView.layer.cornerRadius = castImageView.bounds.width / 2
        castImageView.layer.masksToBounds = true
    }

    
}
