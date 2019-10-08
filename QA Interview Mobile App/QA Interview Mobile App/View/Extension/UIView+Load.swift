//
//  UIView+Load.swift
//  QA Interview Mobile App
//
//  Created by Rigoberto Saenz Imbacuan on 10/8/19.
//  Copyright © 2019 Belatrix Software. All rights reserved.
//

import UIKit

extension UIView {
    
    static func getNib() -> UINib {
        let nibName = className(some: self)
        return UINib(nibName: nibName, bundle: nil)
    }
}

public func className(some: Any) -> String {
    return (some is Any.Type) ? "\(some)" : "\(type(of: some))"
}

