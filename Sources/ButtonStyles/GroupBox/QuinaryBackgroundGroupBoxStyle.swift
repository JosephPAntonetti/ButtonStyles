//
//  ThemedGroupBoxStyle.swift
//
//
//  Created by Joseph Antonetti on 12/20/23.
//

import SwiftUI

public struct QuinaryBackgroundGroupBoxStyle : GroupBoxStyle {
    
    public init(){}
    
    public func makeBody(configuration: Configuration) -> some View {
        GroupBox {
            configuration.content
        } label: {
            configuration.label
        }
        .backgroundStyle(.primary.quinary)
    }
}

public extension View {
    
    func quinaryBackgroundGroupBox() -> some View {
        self.groupBoxStyle(QuinaryBackgroundGroupBoxStyle())
    }

}

#Preview {
    ScrollView {
        LazyVStack {
            GroupBox {
                Text("Content")
            } label: {
                Text("Label")
            }
            .groupBoxStyle(QuinaryBackgroundGroupBoxStyle())
            .foregroundStyle(.yellow)
        }
    }
}
