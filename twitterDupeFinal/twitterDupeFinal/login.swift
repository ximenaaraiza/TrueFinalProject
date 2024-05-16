//
//  login.swift
//  twitterDupeFinal
//
//  Created by StudentAM on 5/15/24.
//

import SwiftUI

struct Accounts{
    var UserName : String
    var PassWord : String
    var Femalemale : Bool
    var nameee : String
    var lastNamee : String
}

struct login: View {
   @State var name : String
   @State var lastName : String
   @State var password : String
   @State var Username : String
   @State var maleFemale : Bool
    @State private var userExists : Bool = false
    @State var pass : String = ""
    @State var user : String = ""
    @State private var Userss : [Accounts] = [
        Accounts(UserName: "XimenaAraiza", PassWord: "Ximena123", Femalemale: true, nameee: "Ximena", lastNamee: "Araiza"),
        Accounts(UserName: "GladysArias", PassWord: "Gladys123", Femalemale: true, nameee: "Gladys", lastNamee: "Arias" ),
        Accounts(UserName: "JesusCorrea", PassWord: "Jesus123", Femalemale: false, nameee: "Jesus", lastNamee: "Correa"),
        Accounts(UserName: "HectorRivera", PassWord: "Hector123", Femalemale: false, nameee: "Hector", lastNamee: "Rivera" ),
        Accounts(UserName: "YahirCortes", PassWord: "Yahir123", Femalemale: false, nameee: "Yahir", lastNamee: "Cortes")
    ]
    
    @State var posted : [Postss]
      
    var body: some View {
        NavigationView{
            ZStack{
                Image("beige")
                VStack{
                    Text("Username:")
                        .bold()
                    TextField("Enter...", text: $user)
                        .frame(width:170, height:30)
                        .background(Color.white)
                        .cornerRadius(10)
                        .font(.system(size: 13))
                    
                    Text("Password:")
                        .bold()
                    TextField("Enter...", text: $pass)
                        .frame(width:170, height:30)
                        .background(Color.white)
                        .cornerRadius(10)
                        .font(.system(size: 13))
                    
                    if pass != "" && user != ""{
                        Button(action: run, label: {
                            Text("Sign In")
                        })
                    }
                    NavigationLink(destination: TabPage(name: name, lastName: lastName, Username: Username, maleFemale: maleFemale, posted: posted).navigationBarBackButtonHidden(true), isActive: $userExists){
                        EmptyView()
                    }
                    
                }
            }
            .navigationTitle("Sign In")
        }
        
    }
    func run() {
        for i in Userss.indices{
         
            if Userss[i].UserName == user && Userss[i].PassWord == pass{
                name = Userss[i].nameee
                lastName = Userss[i].lastNamee
                Username = Userss[i].UserName
                maleFemale = Userss[i].Femalemale
                userExists = true
            }
        }
    }
}

#Preview {
    login(name: "", lastName: "", password: "", Username: "", maleFemale: true, posted: [])
}
