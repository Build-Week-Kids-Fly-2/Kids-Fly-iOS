//
//  Cache.swift
//  Kids Fly
//
//  Created by Jake Connerly on 10/25/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

import UIKit

class Cache<Key: Hashable, Value> {
    private var cache = [Key : Value]()
    private let queue = DispatchQueue(label: "com.jakeconnerly.Kids-Fly.cache")
    
    func cache(value: Value, for key: Key) {
        queue.async {
            self.cache[key] = value
        }
    }
    
    func value(for key: Key) -> Value? {
        return queue.sync { cache[key] }
    }
    
}
