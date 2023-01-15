//
//  ViewContent.swift
//  ContentViewUI
//
//  Created by Ярослав Кочкин on 15.01.2023.
//

import SwiftUI

struct ViewContent: View {
    
    var body: some View {
        Color(.orange)
            .ignoresSafeArea()
            .frame(width: 300, height: 150)
            .cornerRadius(30)
            .shadow(radius: 10, x: 10, y: 10)
    }
}

struct ViewContent_Previews: PreviewProvider {
    static var previews: some View {
        ViewContent()
    }
}
