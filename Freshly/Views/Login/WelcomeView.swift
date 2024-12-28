//
//  WelcomeView.swift
//  Freshly
//
//  Created by Anshuman Bhatt on 25/12/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack{
            Image("welcom_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
            VStack{
                Spacer()
                
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .padding(.bottom, 8)
                
                Text("Welcome To Freshly")
                    .font(.customfont(.semibold, fontSize: 48))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                Text("Get your Grocery Delivered Superfast")
                    .font(.customfont(.medium, fontSize: 16))
                    .foregroundColor(.white.opacity(0.7))
                    .multilineTextAlignment(.center)
                    .padding(.bottom,20)
                
                NavigationLink {
                    SignInView()
                } label: {
                    RoundButton(title: "Get Started") {
                        
                    }
                    
                }
              
                
                
                Spacer()
                    .frame(height: 60)
                
            }
            .padding(.horizontal, 20)
        }
            .ignoresSafeArea()
            .navigationTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        
    }
    
}

#Preview {
    NavigationView{
        WelcomeView()
    }
}
