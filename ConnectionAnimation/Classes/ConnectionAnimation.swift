//
//  ConnectionAnimation.swift
//  Pods
//
//  Created by Ievgen Naloiko on 8/11/16.
//
//

import UIKit

class ConnectionAnimation: UIImageView {

    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.image = UIImage(named: "guy.png", inBundle: NSBundle(forClass: ConnectionAnimation.self), compatibleWithTraitCollection: nil)
    }

}
