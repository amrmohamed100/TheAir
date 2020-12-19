//
//  UIView+.swift
//  TheAir
//
//  Created by Amr Mohamed on 12/18/20.
//  Copyright © 2020 Amr Mohamed. All rights reserved.
//

import UIKit

extension UIView {
    
    func showLoading(_ isLoading: Bool) {
        if isLoading {
            let activityView = UIActivityIndicatorView(style: .whiteLarge)
            activityView.center = self.center
            activityView.startAnimating()
            activityView.tag = 49
            
            self.addSubview(activityView)
        } else {
            for view in self.subviews {
                if view.tag == 49 {
                    view.removeFromSuperview()
                }
            }
        }
    }
    
}
