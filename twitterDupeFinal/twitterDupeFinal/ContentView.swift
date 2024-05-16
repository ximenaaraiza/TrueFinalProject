//
//  ContentView.swift
//  twitterDupeFinal
//
//  Created by StudentAM on 5/15/24.
//

import SwiftUI

struct ContentView: View {
    @State var posted : [Postss]
        
    var body: some View {
        NavigationView{
                ZStack{
                    Image("beige")
                    VStack {
                    Text("Welcome, to Thoughts Express")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .frame(width:300, height:200)
                        .multilineTextAlignment(.center)
                    NavigationLink(destination: AccCreate().navigationBarBackButtonHidden(true), label:  {
                        Text("Create Account")
                                                        .frame(width:120 , height:30)
                                                        .foregroundStyle(Color.black)
                                                        
                                                        .background(Color.white)
                                                        .font(.system(size: 15))
                                                        .cornerRadius(10)
                                                       
                                                    
                                                })
                        NavigationLink(destination: login(name: "", lastName: "", password: "", Username: "", maleFemale: true, posted: posted).navigationBarBackButtonHidden(true), label:  {
                                                        Text("Login")
                                                            .frame(width:120 , height:30)
                                                            .foregroundStyle(Color.black)
                                                            
                                                            .background(Color.white)
                                                            .font(.system(size: 15))
                                                            .cornerRadius(10)
                                                           
                                                        
                                                    })
                }
            }
            .navigationTitle("Login")
            .padding()
        }
    }
}

#Preview {
    ContentView(posted: [])
}
