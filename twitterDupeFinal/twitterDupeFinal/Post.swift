//
//  Post.swift
//  twitterDupeFinal
//
//  Created by StudentAM on 5/15/24.
//

import SwiftUI


struct Post: View {
    // variable that if the male femal bool is true then the string will be FemaleIcon and if its False the string will be Male Icon
    var CircleIcon : String {
        return maleFemale ? "FemaleIcon" : "MaleIcon"
    }
    //Bool that will determine if post if readyto post of not
    @State var postIt : Bool = false
    //strings holding user info
    var Username : String
    var maleFemale : Bool
    var name : String
    var lastName : String
    //where the text typed into the input for your post will be stored
    @State var text : String = ""
    // the array that holds posts where your posts will later be added to
   @Binding var posted : [Postss]
    var body: some View {
        //backgound self explainable
        ZStack{
            Image("beige")
            
            VStack{
                
                HStack{
                    //the var that depends on male fem if text is FemalIcon icon will be pink, If the text is MaleIcon icon will be blue
                    Image(CircleIcon)
                        .resizable()
                        .frame(width:60, height:60)
                        .cornerRadius(100)
                    //displays who / you . who is making the post
                    Text("\(Username)")
                }
                .frame(width:300, height: 150, alignment: .topLeading)
                // like an input but allows to have multiple lines, text stored in text var
                TextEditor( text: $text)
                    .frame(width:250, height:150, alignment: .topLeading)
                    .background(Color.white)
                    .cornerRadius(10)
                    .font(.system(size: 13))
                    .lineLimit(20)
                    .padding(50)
                
                // when text is added button will intensify and that indicates to cont when pressed will run the postCreate function
                Button(action: postCreate, label: {
                    Text("Post")
                        .foregroundStyle(Color.white)
                        .frame(width:50,height:40)
                        .background(text != "" ?  Color.blue : Color("Color"))
                        .cornerRadius(10)
                     
                })
                //Nav link, it doesnt appear but will run whne the postit var is true this will then send you back to the home page to display your post has posted at the bottom
                NavigationLink(destination: TabPage(name: name, lastName: lastName, Username: Username, maleFemale: maleFemale, posted: posted).navigationBarBackButtonHidden(true), isActive: $postIt){
                    EmptyView()
                }
                
            }
            
        }
    }
    
    func postCreate() {
        //will make a new struct of a post in the array will store gender username and ur post
     let post = Postss(MaleFem: maleFemale, Userr: Username, Text: text)
        //will then add this struct/array to the array of postss
        posted.append(post)
        // then set the var that determines if post is ready to post to true which will cause the non seen nav link to run.
        postIt = true
    }
}

#Preview {
    Post(Username: "", maleFemale: true, name: "", lastName: "",posted: .constant([]))
}
