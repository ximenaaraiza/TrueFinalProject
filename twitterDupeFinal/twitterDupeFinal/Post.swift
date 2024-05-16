//
//  Post.swift
//  twitterDupeFinal
//
//  Created by StudentAM on 5/15/24.
//

import SwiftUI


struct Post: View {
    
    var CircleIcon : String {
        return maleFemale ? "FemaleIcon" : "MaleIcon"
    }
    var Username : String
    var maleFemale : Bool
    var name : String
    var lastName : String
    @State var text : String = ""
   @Binding var posted : [Postss]
    var body: some View {
        ZStack{
            Image("beige")
            
            VStack{
                
                HStack{
                    Image(CircleIcon)
                        .resizable()
                        .frame(width:60, height:60)
                        .cornerRadius(100)
                    Text("\(Username)")
                }
                .frame(width:300, height: 150, alignment: .topLeading)

                TextEditor( text: $text)
                    .frame(width:250, height:150, alignment: .topLeading)
                    .background(Color.white)
                    .cornerRadius(10)
                    .font(.system(size: 13))
                    .lineLimit(20)
                    .padding(50)
                
                NavigationLink(destination: TabPage( name: name, lastName: lastName, Username: Username, maleFemale: maleFemale, posted: posted).navigationBarBackButtonHidden(true), label: {
                    Text("Post")
                        .foregroundStyle(Color.white)
                        .frame(width:50,height:40)
                        .background(text != "" ?  Color.blue : Color("Color"))
                        .cornerRadius(10)
                     
                        
                })
            }
            
        }
    }
    func postCreate() {
     let post = Postss(MaleFem: maleFemale, Userr: Username, Text: text)
        posted.append(post)
        
    }
}

#Preview {
    Post(Username: "", maleFemale: true, name: "", lastName: "",posted: .constant([]))
}
