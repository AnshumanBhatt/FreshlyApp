//
//  WelcomeView.swift
//  Freshly
//
//  Created by Anshuman Bhatt on 21/11/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack{
            Image("welcom_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth , height: .screenHeight)
            
            VStack{
                Spacer()
                
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .padding(.bottom,8)
                
                Text("Welcome to our Store")
                    .font(.customfont(.semibold, fontSize: 48))
                    .foregroundColor(.white)
                multilineTextAlignment(.center)
                
                Text("WGet your Groceries faster than never before")
                    .font(.customfont(.medium, fontSize: 16))
                    .foregroundColor(.white.opacity(0.7))
                multilineTextAlignment(.center)
                    .padding(.bottom,30)
                
                RoundButton(title: "Get Started") {
                    
                }
                
                Spacer()
                    .frame(height:80)
            }
            .padding(.horizontal, 20)
        }
        
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
        
    }
        
}

#Preview {
    WelcomeView()
}
