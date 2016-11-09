//
//  Animation.swift
//  ToDoList498
//
//  Created by iGuest on 11/8/16.
//  Copyright © 2016 iGuest. All rights reserved.
//

import UIKit

class Animation: NSObject {
    static func grow(view: UIView) {
        UIView.animate(withDuration: 0.5, delay: 0.0, options: .autoreverse, animations:{
            view.transform = CGAffineTransform.init(scaleX: 1.5, y: 1.5)
            }, completion: { finished in
            view.transform = .identity
        })
    }
    
    static func flashBG(color: UIColor, view: UIView) {
        let originalColor = view.backgroundColor
        
        UIView.animate(withDuration: 0.5, delay: 0.0, animations:{
            view.backgroundColor = color
            }, completion: { finished in
                UIView.animate(withDuration: 0.5, animations: {
                    view.backgroundColor = originalColor
                })
        })
    }
}
