//
//  login.swift
//  twitterDupeFinal
//
//  Created by StudentAM on 5/15/24.
//

import SwiftUI
//struct to organize acc/user information .. thier names passwords their gender
struct Accounts{
    var UserName : String
    var PassWord : String
    var Femalemale : Bool
    var nameee : String
    var lastNamee : String
}

struct login: View {
    //the original vars that store the user infomation
   @State var name : String
   @State var lastName : String
   @State var password : String
   @State var Username : String
   @State var maleFemale : Bool
    // will determine if the user is in the array
    @State private var userExists : Bool = false
    //stores what you put into the username and password inputs
    @State var pass : String = ""
    @State var user : String = ""
    //array of struct holding each user their names pass and gender
    @State private var Userss : [Accounts] = [
        Accounts(UserName: "XimenaAraiza", PassWord: "Ximena123", Femalemale: true, nameee: "Ximena", lastNamee: "Araiza"),
        Accounts(UserName: "GladysArias", PassWord: "Gladys123", Femalemale: true, nameee: "Gladys", lastNamee: "Arias" ),
        Accounts(UserName: "JesusCorrea", PassWord: "Jesus123", Femalemale: false, nameee: "Jesus", lastNamee: "Correa"),
        Accounts(UserName: "HectorRivera", PassWord: "Hector123", Femalemale: false, nameee: "Hector", lastNamee: "Rivera" ),
        Accounts(UserName: "YahirCortes", PassWord: "Yahir123", Femalemale: false, nameee: "Yahir", lastNamee: "Cortes")
    ]
    //acess to array where posts are stored
    @State var posted : [Postss]
      
    var body: some View {
        NavigationView{
            ZStack{//background
                Image("beige")
                VStack{
                    //where to enter username
                    Text("Username:")
                        .bold()
                    TextField("Enter...", text: $user)
                        .frame(width:170, height:30)
                        .background(Color.white)
                        .cornerRadius(10)
                        .font(.system(size: 13))
                  //  where to enter password
                    Text("Password:")
                        .bold()
                    TextField("Enter...", text: $pass)
                        .frame(width:170, height:30)
                        .background(Color.white)
                        .cornerRadius(10)
                        .font(.system(size: 13))
                  //if both fields are not empty the button to sign in and run the function will appear
                    if pass != "" && user != ""{
                        Button(action: run, label: {
                            Text("Sign In")
                        })
                    }
                    //Navlink that doesnt appear but when the userexixts is true will run and log you in taking you to the home page and fillign the app with your info
                    NavigationLink(destination: TabPage(name: name, lastName: lastName, Username: Username, maleFemale: maleFemale, posted: posted).navigationBarBackButtonHidden(true), isActive: $userExists){
                        EmptyView()
                    }
                    
                }
            }
            .navigationTitle("Sign In")
        }
        
    }
    func run() {
        //goes through the accounts and the users
        for i in Userss.indices{
            // if both the password and username enterned match to one that is in te array then all the info of the person will be stored in the original vars that store user data
            if Userss[i].UserName == user && Userss[i].PassWord == pass{
                name = Userss[i].nameee
                lastName = Userss[i].lastNamee
                Username = Userss[i].UserName
                maleFemale = Userss[i].Femalemale
                //then it will be true that the user is acy=tually in the array making the nav link work
                userExists = true
            }
        }
    }
}

#Preview {
    login(name: "", lastName: "", password: "", Username: "", maleFemale: true, posted: [])
}
