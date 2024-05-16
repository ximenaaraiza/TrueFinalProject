//
//  Account.swift
//  twitterDupeFinal
//
//  Created by StudentAM on 5/15/24.
//

import SwiftUI

struct Account: View {
    var name : String
    var lastName : String
    var Username : String
    var maleFemale : Bool
    private var userIcon : String {
        return maleFemale ? "FemaleIcon" : "MaleIcon"
    }
    @State  var posted : [Postss]
    var body: some View {
        
        ZStack {
            Image("beige")
            
            VStack{
                HStack{
                    Image(userIcon)
                        .resizable()
                        .frame(width: 110, height: 110)
                        .cornerRadius(200)
                    Text("\(Username)")
                        .font(.system(size: 35))
                        .bold()
                }
               
                Text("\(name) \(lastName)")
                    .font(.system(size: 35))
                NavigationLink(destination: Post(Username: Username, maleFemale: maleFemale, name: name, lastName: lastName, posted: $posted).navigationBarBackButtonHidden(true), label:  {
                    VStack{
                        Text("+")
                            .multilineTextAlignment(.center)
                            .frame(width:100 , height:150)
                            .foregroundStyle(Color.white)
                            .font(.system(size: 200))
                            .cornerRadius(10)
                        Text("Add Post")
                            .multilineTextAlignment(.center)
                           
                            .foregroundStyle(Color.white)
                            .font(.system(size: 20))
                            .cornerRadius(10)
                    }
                                            })
                
            }
        }
      
    }
        
}

#Preview {
    Account(name: "", lastName: "", Username: "", maleFemale: false, posted: [])
}
