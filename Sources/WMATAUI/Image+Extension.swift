//
//  Image+Extension.swift
//  
//
//  Created by Randall Wood on 2022-01-09.
//

import SwiftUI

public extension Image {
    
    init(metroName: String) {
        self.init(metroName, bundle: .module)
    }
}
