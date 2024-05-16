//
//  Account.swift
//  twitterDupeFinal
//
//  Created by StudentAM on 5/15/24.
//

import SwiftUI

struct Account: View {
    //the users infomation
    var name : String
    var lastName : String
    var Username : String
    var maleFemale : Bool
    //same as other variables that determine if the text is feamle or male to determine icon color
    private var userIcon : String {
        return maleFemale ? "FemaleIcon" : "MaleIcon"
    }
    //access to the array of posts
    @State  var posted : [Postss]
    
    var body: some View {
        
        ZStack {//background
            Image("beige")
            
            VStack{
                HStack{
                    //var that determines icon color
                    Image(userIcon)
                        .resizable()
                        .frame(width: 110, height: 110)
                        .cornerRadius(200)
                    //display of username
                    Text("\(Username)")
                        .font(.system(size: 35))
                        .bold()
                }
               //display of full name
                Text("\(name) \(lastName)")
                    .font(.system(size: 25))
                    .bold()
                Text("Your Post's")
                    .bold()
                    .frame(width: 250, height: 40, alignment: .topLeading)
                    //displays the postss you have posted
                ForEach(posted.indices, id:\.self){ i in
                    if posted[i].Userr == Username {
                        
                        PostView(Username: posted[i].Userr, maleFemale: posted[i].MaleFem, texttt: posted[i].Text)
                        
                    }
                    
                }
                
                
                
                
                //navlink that will take you to post something from acc page
                NavigationLink(destination: Post(Username: Username, maleFemale: maleFemale, name: name, lastName: lastName, posted: $posted).navigationBarBackButtonHidden(true), label:  {
                    VStack{
                        Text("+")
                            .multilineTextAlignment(.center)
                            .frame(width:50 , height:50)
                            .foregroundStyle(Color.white)
                            .font(.system(size: 60))
                            .cornerRadius(10)
                        Text("Add Post")
                            .multilineTextAlignment(.center)
                           
                            .foregroundStyle(Color.white)
                            .font(.system(size: 20))
                            .cornerRadius(10)
                    }
                                            })
                
            }
            .padding()
        }
      
    }
        
}

#Preview {
    Account(name: "", lastName: "", Username: "", maleFemale: false, posted: [])
}
