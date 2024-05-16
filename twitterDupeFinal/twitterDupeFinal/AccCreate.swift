//
//  AccCreate.swift
//  twitterDupeFinal
//
//  Created by StudentAM on 5/15/24.
//

import SwiftUI
struct AccCreate: View {
    @State var input : String = ""
    @State var name : String = ""
    @State var lastName : String = ""
    @State var Username : String = ""
    @State var password : String = ""
    @State var maleFemale : Bool = true
    struct Students {
        var username: String
        var password: String
       
    }
    @State private var posted : [Postss] = [
        Postss(MaleFem: true, Userr: "NubiaStone", Text: "Today is so sunny and cute 😊🌞"),
        Postss(MaleFem: false, Userr: "JohnButterfly", Text: "Going to the beach #summer"),
        Postss(MaleFem: true, Userr: "KatieSmith", Text: "Happy Mothers Day to all Mothers")
    ]
    var body: some View {
        NavigationView{
            ZStack{
                Image("beige")
                
                VStack {
                    Image("UserIcon")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .cornerRadius(105)
                    HStack{
                        Text("Name:")
                            .bold()
                        TextField("Ex.John...", text: $name)
                            .frame(width:200, height:30)
                            .background(Color.white)
                            .cornerRadius(10)
                            .font(.system(size: 13))
                    }
                    .padding()
                    HStack{
                        Text("LastName:")
                            .bold()
                        TextField("Ex.Smith...", text: $lastName)
                            .frame(width:170, height:30)
                            .background(Color.white)
                            .cornerRadius(10)
                            .font(.system(size: 13))
                    }
                    .padding()
                    HStack{
                        Text("Username:")
                            .bold()
                        TextField("Ex.Abc123@...", text: $Username)
                            .frame(width:170, height:30)
                            .background(Color.white)
                            .cornerRadius(10)
                            .font(.system(size: 13))
                    }
                    .padding()
                    HStack{
                        Text("Password:")
                            .bold()
                        TextField("Ex.18...", text: $password)
                            .frame(width:180, height:30)
                            .background(Color.white)
                            .cornerRadius(10)
                            .font(.system(size: 13))
                    }
                    .padding()
                    HStack{
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
                    HStack{
                        if name != "" && lastName != "" && Username != "" && password != "" {
                            NavigationLink(destination: Account(name: name, lastName: lastName, Username: Username, maleFemale: maleFemale, posted: posted).navigationBarBackButtonHidden(true), label:  {
                                Text("Create")
                                    .frame(width:120 , height:30)
                                    .foregroundStyle(Color.black)
                                
                                    .background(Color.white)
                                    .font(.system(size: 15))
                                    .cornerRadius(10)
                                
                                
                            })
                        }
                        NavigationLink(destination: ContentView(posted: posted).navigationBarBackButtonHidden(true), label:  {
                                                        Text("Cancel")
                                                            .frame(width:120 , height:30)
                                                            .foregroundStyle(Color.black)
                                                            
                                                            .background(Color.white)
                                                            .font(.system(size: 15))
                                                            .cornerRadius(10)
                                                           
                                                        
                                                    })
                    }
                    .padding()
                }
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
    AccCreate()
}
