//
//  VerticallyRotated.swift
//
//
//  Created by Kristóf Kálai on 2023. 09. 10..
//

import SwiftUI
import SizePreferenceKey

struct VerticallyRotated {
    let bottomUpReadable: Bool
    @State private var size: CGSize = .zero
}

extension VerticallyRotated: ViewModifier {
    func body(content: Content) -> some View {
        content
            .storeSize(in: $size)
            .fixedSize()
            .rotationEffect(.degrees(bottomUpReadable ? 270 : 90))
            .frame(width: size.height, height: size.width)
    }
}
