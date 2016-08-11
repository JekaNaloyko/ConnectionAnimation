//
//  ConnectionAnimation.swift
//  Pods
//
//  Created by Ievgen Naloiko on 8/11/16.
//
//

import UIKit

public class ConnectionAnimation: UIImageView {

    private var timer: NSTimer?
    private let imageNamesArray = ["lookingforwifi1", "lookingforwifi2", "lookingforwifi3", "havewifi"]
    private var currentIndex: Int = 0
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        if timer == nil {
            timer = NSTimer.scheduledTimerWithTimeInterval(0.4, target: self, selector: #selector(ConnectionAnimation.update), userInfo: nil, repeats: true)
        }
    }
    
    func update() {
        self.image =  UIImage(named: imageNamesArray[currentIndex], inBundle: NSBundle(forClass: ConnectionAnimation.self), compatibleWithTraitCollection: nil)
        if currentIndex >= imageNamesArray.count - 1 {
            currentIndex = 0
        }
        else {
            currentIndex = currentIndex + 1
        }
    }
}
