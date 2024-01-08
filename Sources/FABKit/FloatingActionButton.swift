//
//  FloatingActionButton.swift
//
//
//  Created by Joseph Antonetti on 1/2/24.
//

import SwiftUI

public struct FloatingActionButton: View {
    
    let systemImage : String
    let action : () -> Void
    
    public init(
        systemImage: String,
        action: @escaping () -> Void) {
        self.systemImage = systemImage
        self.action = action
    }
    
    public var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: systemImage)
                .font(.title3)
        }
        .buttonStyle(FloatingActionButtonStyle())
    }
}

#Preview {
    FloatingActionButton(
        systemImage: "star",
        action: {}
    )
    .foregroundStyle(.yellow)
    .backgroundStyle(.yellow.quinary)
}
