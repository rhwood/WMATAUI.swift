//
//  File.swift
//  
//
//  Created by Randall Wood on 1/30/21.
//

import Foundation
import WMATA

extension Stop: Equatable {

    public static func == (lhs: Stop, rhs: Stop) -> Bool {
        lhs.id == rhs.id
    }
}

extension Stop: Hashable {

    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
