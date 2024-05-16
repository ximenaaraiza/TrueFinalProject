//
//  AccCreate.swift
//  twitterDupeFinal
//
//  Created by StudentAM on 5/15/24.
//

import SwiftUI
struct AccCreate: View {
    //variables where the info the user inputs will bhe stored
    @State var input : String = ""
    @State var name : String = ""
    @State var lastName : String = ""
    @State var Username : String = ""
    @State var password : String = ""
    @State var maleFemale : Bool = true
//acess to the array that holds fake and real posts made
    @State var posted : [Postss]
    var body: some View {
        NavigationView{
            ZStack{ //background
                Image("beige")
                
                VStack { // plain grey icon no gender had been selected
                    Image("UserIcon")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .cornerRadius(105)
                    //hStack for the text and input to be side by side, same oes for all the hstacks in this page
                    HStack{ // input to enter name
                        Text("Name:")
                            .bold()
                        TextField("Ex.John...", text: $name)
                            .frame(width:200, height:30)
                            .background(Color.white)
                            .cornerRadius(10)
                            .font(.system(size: 13))
                    }
                    .padding()
                    HStack{ //input for lastname
                        Text("LastName:")
                            .bold()
                        TextField("Ex.Smith...", text: $lastName)
                            .frame(width:170, height:30)
                            .background(Color.white)
                            .cornerRadius(10)
                            .font(.system(size: 13))
                    }
                    .padding()
                    HStack{  //input for username
                        Text("Username:")
                            .bold()
                        TextField("Ex.Abc123@...", text: $Username)
                            .frame(width:170, height:30)
                            .background(Color.white)
                            .cornerRadius(10)
                            .font(.system(size: 13))
                    }
                    .padding()
                    HStack{// input for password
                        Text("Password:")
                            .bold()
                        TextField("Ex.dkjfnjhdb...", text: $password)
                            .frame(width:180, height:30)
                            .background(Color.white)
                            .cornerRadius(10)
                            .font(.system(size: 13))
                    }
                    .padding()
                    HStack{ //determines if the male fem var is true or false if female then true if male them false
                        Text("Gender:")
                            .bold()
                        Button(action:{maleFemale = true} , label: {
                            Text("Female")
                                .frame(width: 80, height:35)
                                .foregroundStyle(Color.black)
                                .background(Color.white)
                                .cornerRadius(10)
                                .font(.system(size: 12))
                        })
                        Button(action: {maleFemale = false}, label: {
                            Text("Male")
                                .frame(width: 80, height:35)
                                .foregroundStyle(Color.black)
                                .background(Color.white)
                                .cornerRadius(10)
                                .font(.system(size: 12))
                            
                        })
                       
                    }
                    Spacer()
                    HStack{ // if all the fields are filled then you can create the acc and can hit nag=vlink to open app
                        if name != "" && lastName != "" && Username != "" && password != "" {
                            NavigationLink(destination: TabPage(name: name, lastName: lastName, Username: Username, maleFemale: maleFemale, posted: posted).navigationBarBackButtonHidden(true), label:  {
                                Text("Create")
                                    .frame(width:120 , height:30)
                                    .foregroundStyle(Color.black)
                                    .background(Color.white)
                                    .font(.system(size: 15))
                                    .cornerRadius(10)
                                
                                
                            })
                        }// if create was accidently selected this will be able to cancel adn send you back to the start page
                        NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true), label:  {
                                                        Text("Cancel")
                                                            .frame(width:120 , height:30)
                                                            .foregroundStyle(Color.black)
                                                            
                                                            .background(Color.white)
                                                            .font(.system(size: 15))
                                                            .cornerRadius(10)
                                                           
                                                        
                                                    })
                    }
                    .padding()
                }//title
                .navigationTitle("Create your profile")
                .padding(.bottom)
                .frame(width:400, height:400)
                
                
                
            }
            
         
        }
    }
    func Action(){
        
    }
}


#Preview {
    AccCreate(posted: [])
}
