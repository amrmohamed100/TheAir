//
//  RoundedView.swift
//  TheAir
//
//  Created by Amr Mohamed on 12/17/20.
//  Copyright © 2020 Amr Mohamed. All rights reserved.
//

import UIKit

class RoundedView: UIView {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.layer.cornerRadius = self.bounds.height / 2
        self.layer.masksToBounds = true
    }

}
