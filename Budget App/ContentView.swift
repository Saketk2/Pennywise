//
//  ContentView.swift
//  Budget App
//
//  Created by Saket Kolluru on 3/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 141/255, green: 153/255, blue: 174/255).edgesIgnoringSafeArea(.all)

            ZStack{
                Circle()
                    .fill(Color.red)
                    .frame(width: 450, height: 450)
                    .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                    .padding(.top, -270)
                
                VStack {
                    Spacer()
                    Image("Pennywise Logo")
                        .resizable()
                        .scaledToFit()
                        .padding(.top, -150)
                        .shadow(color: .black, radius: 10)
                    
                    Text("Pennywise")
                        .font(.system(size: 50, design: .rounded))
                        .padding(.top, -100)
                        .frame(width: 400)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    NavigationLink{
                        Login()
                    } label: {
                        Text("Log in")
                            .frame(width: 200)
                            .fontWeight(.bold)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .padding(1)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.black, lineWidth: 2)
                            )
                    }
                    
                    NavigationLink{
                        Signup()
                    } label: {
                        Text("Sign up")
                            .frame(width: 200)
                            .fontWeight(.bold)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .padding(1)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.black, lineWidth: 2))
                    }
                    Spacer()
                    
                }
            }
        }
    }
}
struct ContectView_Preview: PreviewProvider{
    static var previews: some View{
        NavigationStack{
            ContentView()
        }
    }
}
