//
//  SignInView.swift
//  Freshly
//
//  Created by Anshuman Bhatt on 25/12/24.
//

import SwiftUI

struct SignInView: View {
    
    @State var txtMobile: String = ""
    var body: some View {
        ZStack{
            Image("bottom_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
            VStack{
                Image("sign_in_top")
                    .resizable()
                    .scaledToFill()
                    .frame(width: .screenWidth, height: .screenWidth)
                
                Spacer()
            }
            ScrollView {
                
                VStack(alignment: .leading) {
                    Text("Welcome")
                        .font(.customfont(.semibold, fontSize: 26))
                        .foregroundColor(.primaryText)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom,25)
                    HStack {
                        Button {
                            
                        } label: {
                            Image("")
                            
                            Text("+91")
                                .font(.customfont(.medium, fontSize: 18))
                                .foregroundColor(.primaryText)
                                
                        }
                        TextField("Enter Mobile No.", text: $txtMobile)
                            .frame(minWidth: 0, maxWidth: .infinity)
                        
                        
                        
                    }
                    Divider()
                        .padding(.bottom,25)
                    Text("Or connnect with Social Media")
                        .font(.customfont(.semibold, fontSize: 14))
                        .foregroundColor(.textTitle)
                        .multilineTextAlignment(.center)
                        .frame(minWidth: 0, maxWidth: .infinity,alignment: .center)
                        .padding(.bottom,25)
                    
                    Button {
                       
                    } label: {
                        Image("google_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                        Text("Continue with Google")
                            .font(.customfont(.semibold, fontSize: 18))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60)
                    .background(Color(hex: "5383EC"))
                    .background(Color.primaryApp)
                    .cornerRadius(20)
                    Button {
                       
                    } label: {
                        
                        Image("fb_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                        Text("Continue with Facebook")
                            .font(.customfont(.semibold, fontSize: 18))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60)
                    .background(Color(hex: "4A66AC"))
                    .background(Color.primaryApp)
                    .cornerRadius(20)
                    
                }
                .padding(.horizontal,20)
                
                .frame(width: .screenWidth, alignment: .leading)
                .padding(.top, .topInsets + .screenWidth )
            }
                
        }
        .ignoresSafeArea()
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

#Preview {
    SignInView()
}
