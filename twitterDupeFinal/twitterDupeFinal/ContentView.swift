//
//  ContentView.swift
//  twitterDupeFinal
//
//  Created by StudentAM on 5/15/24.
//

import SwiftUI

struct ContentView: View {
  // Array of struct that holds the fake posts that get to display on the home page this is where your posts also get stored in order to display
    @State private var posted : [Postss] = [
        Postss(MaleFem: true, Userr: "Ashley22", Text: "Craving a bag of Hot Cheetos and an ice water"),
        Postss(MaleFem: false, Userr: "Kevin_02", Text: "Going to the beach #sun🌞"),
        Postss(MaleFem: true, Userr: "Katie.gonzalez", Text: "Happy Mothers Day to all Mothers")
    ]
    var body: some View {
        //Makes the title at the top left
        NavigationView{
            //zStack allows for the beige image to be the background
                ZStack{
                    Image("beige")
                    VStack {
                    Text("Welcome, to Thoughts Express")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .frame(width:300, height:200)
                        .multilineTextAlignment(.center)
                        //Navlink that when pressed will take you to a page where you create your account, backbutton will not be displayed
                        NavigationLink(destination: AccCreate(posted: posted).navigationBarBackButtonHidden(true), label:  {
                        Text("Create Account")
                            .frame(width:120 , height:30)
                            .foregroundStyle(Color.black)
                            .background(Color.white)
                            .font(.system(size: 15))
                            .cornerRadius(10)
                                                    
                                                })
                        //Similar to last navlink but if you have a account in the struct/ array then you can enter the info from there and  will log in
                        NavigationLink(destination: login(name: "", lastName: "", password: "", Username: "", maleFemale: true, posted: posted).navigationBarBackButtonHidden(true), label:  {
                                                        Text("Login")
                                                            .frame(width:120 , height:30)
                                                            .foregroundStyle(Color.black)
                                                            
                                                            .background(Color.white)
                                                            .font(.system(size: 15))
                                                            .cornerRadius(10)
                                                           
                                                        
                                                    })
                }
            }//title
            .navigationTitle("Login")
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
