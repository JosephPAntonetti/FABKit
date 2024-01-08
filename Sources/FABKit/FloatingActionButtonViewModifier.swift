//
//  FloatingActionButtonViewModifier.swift
//
//
//  Created by Joseph Antonetti on 1/2/24.
//

import Foundation
import SwiftUI

public struct FloatingActionButtonViewModifier : ViewModifier {
    
    let systemImage : String
    let action : () -> Void
    
    public init(systemImage: String, action: @escaping () -> Void) {
        self.systemImage = systemImage
        self.action = action
    }
    
    public func body(content: Content) -> some View {
        ZStack {
            content
            VStack {
                Spacer()
                FloatingActionButton(systemImage: systemImage, action: action)
                    .foregroundStyle(.tint)
                    .fontDesign(.rounded)
                    .symbolVariant(.fill)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

public extension View {
    
    func withFloatingActionButton(systemImage: String, action: @escaping () -> Void) -> some View {
        self
            .modifier(FloatingActionButtonViewModifier(systemImage: systemImage, action: action))
    }
}

#Preview {
    Text("Content")
        .withFloatingActionButton(systemImage: "plus", action: {})
        .tint(.green)
}
