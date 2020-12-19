//
//  CircleImageView.swift
//  TheAir
//
//  Created by Amr Mohamed on 12/18/20.
//  Copyright © 2020 Amr Mohamed. All rights reserved.
//

import UIKit

class CircleImageView: UIImageView {
    
    
    override func awakeFromNib() {
        setupView()
    }
    
    func setupView() {
        self.contentMode = .scaleAspectFill
        self.layer.cornerRadius = self.bounds.width / 2
        self.clipsToBounds = true
    }
}
