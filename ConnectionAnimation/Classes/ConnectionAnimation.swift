//
//  ConnectionAnimation.swift
//  Pods
//
//  Created by Ievgen Naloiko on 8/11/16.
//
//

import UIKit

public class ConnectionAnimation: UIImageView {

    override public func layoutSubviews() {
        super.layoutSubviews()
        
        self.image = UIImage(named: "guy.png", inBundle: NSBundle(forClass: ConnectionAnimation.self), compatibleWithTraitCollection: nil)
    }

}
