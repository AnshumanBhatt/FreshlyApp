//
//  RoundButton.swift
//  Freshly
//
//  Created by Anshuman Bhatt on 22/11/24.
//

import SwiftUI

struct RoundButton: View {
    @State var title: String = "Title"
    var didTap: (() -> ())?
    var body: some View {
        Button(action: {
            didTap?()
            
        }, label: {
            Text("Get Started")
                .font(.customfont(.semibold, fontSize: 18))
                .foregroundColor(.white)
            multilineTextAlignment(.center)
        })
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60)
        .background(Color.primaryApp)
        .cornerRadius(20)
    }
}

#Preview {
    RoundButton()
        .padding(20)
}
