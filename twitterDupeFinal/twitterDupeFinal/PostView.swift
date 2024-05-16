//
//  PostView.swift
//  twitterDupeFinal
//
//  Created by StudentAM on 5/15/24.
//

import SwiftUI

struct PostView: View {
    var Username : String
    var maleFemale : Bool
    var texttt : String
    var Icon : String {
        return maleFemale ? "FemaleIcon" : "MaleIcon"
    }
    var body: some View {
        VStack{
            HStack{
                Image(Icon)
                    .resizable()
                    .frame(width:40,height:40)
                    .cornerRadius(100)
                Text(Username)
                    .bold()
            }
            .frame(width: 250, height: 40, alignment: .topLeading)
            
            Text(texttt)
                .frame(width: 250, alignment: .topLeading)
                .background(Color.white)
        }
    }
}

#Preview {
    PostView(Username: "", maleFemale: true, texttt: "")
}
