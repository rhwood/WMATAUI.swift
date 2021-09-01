//
//  StationsUI.swift
//  WMATA Station
//
//  Created by Randall Wood on 1/23/21.
//

import SwiftUI
import WMATA

extension Station {

    /// Get the connecting lines at this station for the given line.
    ///
    /// - Parameter to: The line to get connections for; if nil, returns all lines at this station.
    ///
    /// - Returns: An array of connecting lines; this is empty if the `to` line is the only line at this station.
    func connections(to line: Line?) -> [Line] {
        return self.lines.filter({
            $0 != line
        })
    }

}
