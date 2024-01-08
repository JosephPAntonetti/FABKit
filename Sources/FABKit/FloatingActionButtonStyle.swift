//
//  FloatingActionButtonStyle.swift
//
//
//  Created by Joseph Antonetti on 1/2/24.
//

import Foundation
import SwiftUI

struct FloatingActionButtonStyle : ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.body)
            .padding(.all, 20)
            .background {
                Circle()
                    .foregroundStyle(.background)
                    .shadow(radius: configuration.isPressed ? 0 : 30)
            }
            .overlay {
                if configuration.isPressed {
                    Circle()
                        .foregroundStyle(.black)
                        .opacity(0.3)
                }
            }
    }
}

#Preview {
    Button {
        
    } label: {
        Image(systemName: "star")
    }
    .buttonStyle(FloatingActionButtonStyle())
    .foregroundStyle(.thickMaterial)
    .backgroundStyle(.red.secondary)
}
