//
//  LikeNavBarButton.swift
//  TheAir
//
//  Created by Amr Mohamed on 12/18/20.
//  Copyright © 2020 Amr Mohamed. All rights reserved.
//

import UIKit

class LikeNavBarButton: UIButton {
    
    var isActive: Bool = false
    
    override init(frame: CGRect) {
        super.init(frame: CGRect.zero)
        
//        self.frame = CGRect(x: 0, y: 0, width: 35, height: 35)
        NSLayoutConstraint.activate([
            widthAnchor.constraint(equalToConstant: 24),
            widthAnchor.constraint(equalTo: heightAnchor)
        ])
        
        self.setImage(UIImage(named: "like-0.png"), for: .normal)
        
        //self.addTarget(self, action: #selector(selectionAnimation), for: .touchUpInside)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    private func selectionAnimation(){
        self.center.y += 20
        self.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        self.alpha = 0.5
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0, options: [], animations: {
            
            self.center.y -= 20
            self.transform = CGAffineTransform.identity
            self.alpha = 1
            
        }, completion: { (bool) in
            
        })
    }
    
    internal func shouldSetActive(_ state: Bool) {
        
        selectionAnimation()
        
        isActive = state
        
        let image = state ? UIImage(named: "like-1.png") : UIImage(named: "like-0.png")
        
        setImage(image, for: .normal)
    }
    
}
