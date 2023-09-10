//
//  View+Extensions.swift
//  
//
//  Created by Kristóf Kálai on 2023. 09. 10..
//

import SwiftUI

extension View {
    public func verticallyRotated(bottomUpReadable: Bool = true) -> some View {
        modifier(VerticallyRotated(bottomUpReadable: bottomUpReadable))
    }
}
