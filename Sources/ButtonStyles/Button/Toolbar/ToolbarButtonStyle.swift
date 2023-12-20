//
//  ToolbarButtonStyle.swift
//
//
//  Created by Joseph Antonetti on 12/20/23.
//

import SwiftUI

public struct ToolbarButtonStyle : ButtonStyle {
    
    private let color : Color
    
    public init(_ color : Color = .accentColor){
        self.color = color
    }
    
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .labelStyle(ToolbarLabelStyle())
            .overlay {
                if configuration.isPressed {
                    Circle()
                        .foregroundStyle(.black)
                        .opacity(0.3)
                        .shadow(radius: configuration.isPressed ? 4 : 0)
                }
            }
            .foregroundStyle(color)
    }
}

#Preview {
    NavigationView {
        Text("Content")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("", systemImage: "plus") {}
                        .buttonStyle(ToolbarButtonStyle())
                        .foregroundStyle(.blue)
                }
                ToolbarItem(placement: .cancellationAction) {
                    Button("", systemImage: "highlighter") {}
                        .buttonStyle(ToolbarButtonStyle(.green))
                }
            }
    }
}
