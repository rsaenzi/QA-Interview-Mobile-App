//
//  Cart.swift
//  QA Interview Mobile App
//
//  Created by Rigoberto Saenz Imbacuan on 10/8/19.
//  Copyright © 2019 Belatrix Software. All rights reserved.
//

struct Cart: Codable {
    let id: Int
    let cartItem: [CartItem]
    let address: String
    let paymentMethodId: Int
}
