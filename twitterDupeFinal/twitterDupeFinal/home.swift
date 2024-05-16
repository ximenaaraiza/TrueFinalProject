//
//  home.swift
//  twitterDupeFinal
//
//  Created by StudentAM on 5/15/24.
//

import SwiftUI
//struct that will organize the info of a user for the posts that will be created
struct Postss{
    var MaleFem: Bool
    var Userr: String
    var Text : String
}
struct home: View {
    //userinfo
    var name : String
    var lastName : String
    var Username : String
    var maleFemale : Bool
    //bringing acces to the array of fake posts and where the post will be added to the home page
  @State var posted : [Postss]

    var body: some View {
        //allows title at top
        NavigationView{
            //background
                ZStack{
                    Image("beige")
                    VStack {
                        //this for loop will create a fake post for every struct of info in the array and will set it up to look like the view created in PostView
                        ForEach(posted.indices, id:\.self){ i in
                            PostView(Username: posted[i].Userr, maleFemale: posted[i].MaleFem, texttt: posted[i].Text)
                        }
                    }
                    
                }//title
                .navigationTitle("💭's Express")
                .padding()
            }
        
       
    }
}

#Preview {
    home(name: "", lastName: "", Username: "", maleFemale: true, posted: [])
}
