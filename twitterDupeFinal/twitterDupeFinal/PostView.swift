//
//  PostView.swift
//  twitterDupeFinal
//
//  Created by StudentAM on 5/15/24.
//

import SwiftUI
//this whole page is to just design how want posts to look like
struct PostView: View {
    //info needed to create a post
    var Username : String
    var maleFemale : Bool
    var texttt : String
    //same thing as other vars if the male female is true or false determines the text in the array
    var Icon : String {
        return maleFemale ? "FemaleIcon" : "MaleIcon"
    }
    var body: some View {
        VStack{
            HStack{
                //var that determines blue or pink for user icon
                Image(Icon)
                    .resizable()
                    .frame(width:40,height:40)
                    .cornerRadius(100)
                //how the username will display
                Text(Username)
                    .bold()
            }
            .frame(width: 250, height: 40, alignment: .topLeading)
            //how text displays 
            Text(texttt)
                .frame(width: 250, alignment: .topLeading)
                .background(Color.white)
        }
    }
}

#Preview {
    PostView(Username: "", maleFemale: true, texttt: "")
}
