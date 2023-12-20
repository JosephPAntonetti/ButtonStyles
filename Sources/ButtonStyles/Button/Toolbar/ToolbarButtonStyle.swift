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
            .font(.system(.body, design: .rounded, weight: .semibold))
            .symbolRenderingMode(.hierarchical)
            .foregroundStyle(.primary)
            .padding(.all, 4)
            .background {
                Circle()
                    .foregroundStyle(.primary.quinary)
            }
            .labelStyle(.iconOnly)
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
