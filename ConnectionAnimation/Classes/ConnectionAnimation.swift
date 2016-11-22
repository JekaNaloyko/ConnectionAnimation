//
//  ConnectionAnimation.swift
//  Pods
//
//  Created by Ievgen Naloiko on 8/11/16.
//
//

import AVFoundation
import UIKit

public class ConnectionAnimation: UIImageView {

    private var timer: Timer?
    private let imageNamesArray = ["lookingforwifi1", "lookingforwifi2", "lookingforwifi3", "havewifi"]
    private var currentIndex: Int = 0
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        if timer == nil {
            self.contentMode = .scaleAspectFit
            timer = Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(ConnectionAnimation.update), userInfo: nil, repeats: true)
        }
    }
    
    func update() {
        self.image =  UIImage(named: imageNamesArray[currentIndex], in: Bundle(for: ConnectionAnimation.self), compatibleWith: nil)
        self.setNeedsDisplay()
        if currentIndex >= imageNamesArray.count - 1 {
            currentIndex = 0
        }
        else {
            currentIndex = currentIndex + 1
        }
    }
}
