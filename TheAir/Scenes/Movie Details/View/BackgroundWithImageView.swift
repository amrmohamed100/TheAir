//
//  BackgroundImageView.swift
//  TheAir
//
//  Created by Amr Mohamed on 12/19/20.
//  Copyright © 2020 Amr Mohamed. All rights reserved.
//

import UIKit
import ChameleonFramework

class BackgroundWithImageView: UIView {
    
    @IBOutlet var contentView: UIView!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var backgroundView: UIView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setupView()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    
    private func setupView() {
        Bundle.main.loadNibNamed("BackgroundWithImageView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    
    func setup(with _image: UIImage?, background _color: UIColor?) {
        
        guard let image = _image else { return }
        
        imageView.image = image
        
        guard let color = _color else { return }
        
        backgroundView.backgroundColor = UIColor(gradientStyle: .topToBottom, withFrame: self.bounds, andColors: [UIColor.clear, color])
    }
    
}
