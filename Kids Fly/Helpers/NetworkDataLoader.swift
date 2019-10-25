//
//  NetworkDataLoader.swift
//  Kids FlyTests
//
//  Created by Jake Connerly on 10/24/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

import Foundation

protocol NetworkDataLoader {
    
    func loadData(from request: URLRequest, completion: @escaping(Data?, Error?) -> Void)
    
    func loadData(from url: URL, completion: @escaping(Data?, Error?) -> Void)
    
}
