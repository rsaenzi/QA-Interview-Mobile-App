//
//  UITableView+Load.swift
//  QA Interview Mobile App
//
//  Created by Rigoberto Saenz Imbacuan on 10/8/19.
//  Copyright © 2019 Belatrix Software. All rights reserved.
//

import UIKit

extension UITableView {
    
    /**
     This function works if the UITableViewCell class and the Cell Identifier are the same
     */
    func dequeue<T: UITableViewCell>(_ indexPath: IndexPath) -> T {
        
        let identifier = className(some: T.self)
        let rawCell = self.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        
        guard let cell = rawCell as? T else {
            fatalError("UITableViewCell with identifier '\(identifier)' was not found")
        }
        return cell
    }
}

extension UITableViewCell {
    
    static func getReuseIdentifier() -> String {
        return className(some: self)
    }
}
