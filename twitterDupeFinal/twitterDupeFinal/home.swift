//
//  home.swift
//  twitterDupeFinal
//
//  Created by StudentAM on 5/15/24.
//

import SwiftUI
struct Postss{
    var MaleFem: Bool
    var Userr: String
    var Text : String
}
struct home: View {
    var name : String
    var lastName : String
    var Username : String
    var maleFemale : Bool
  @State var posted : [Postss]

    var body: some View {
        
        NavigationView{
                ZStack{
                    Image("beige")
                    VStack {
                        
                        ForEach(posted.indices, id:\.self){ i in
                            PostView(Username: posted[i].Userr, maleFemale: posted[i].MaleFem, texttt: posted[i].Text)
                        }
                    }
                }
                .navigationTitle("💭's Express")
                .padding()
            }
        
       
    }
}

#Preview {
    home(name: "", lastName: "", Username: "", maleFemale: true, posted: [])
}
