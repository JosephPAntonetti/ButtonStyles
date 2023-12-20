//
//  SwiftUIView.swift
//  
//
//  Created by Joseph Antonetti on 12/20/23.
//

import SwiftUI

public struct ToolbarLabelStyle: LabelStyle {
    
    public init() {}
    
    public func makeBody(configuration: Configuration) -> some View {
        configuration.icon
            .font(.system(.body, design: .rounded, weight: .semibold))
            .symbolRenderingMode(.hierarchical)
            .foregroundStyle(.primary)
            .padding(.all, 4)
            .background {
                Circle()
                    .foregroundStyle(.primary.quinary)
            }
    }
}

#Preview {
    Label("Text", systemImage: "plus")
        .labelStyle(ToolbarLabelStyle())
}
