//
//  TabPage.swift
//  twitterDupeFinal
//
//  Created by StudentAM on 5/15/24.
//

import SwiftUI

struct TabPage: View {
  
    @State private var selectedTab : Int = 1
    var name : String
    var lastName : String
    var Username : String
    var maleFemale : Bool
    @State var posted : [Postss]
       
    var body: some View {
        //This is what creates the little bar at the bottom with the images, the bottom the tag numbers are in orderto make sure the pages dont want to stack on top whne you are already on that page and click it again
        TabView(selection: $selectedTab){
            home(name: name, lastName: lastName, Username: Username, maleFemale: maleFemale, posted : posted)
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(1)
            Post(Username: Username, maleFemale: maleFemale, name: name, lastName: lastName, posted: $posted)
                .tabItem {
                    Image(systemName: "plus.rectangle")
                    Text("Post")
                }
                .tag(2)
            Account(name: name, lastName: lastName, Username: Username, maleFemale: maleFemale, posted: posted)
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("You")
                }
                .tag(3)
            
        }
        .onAppear() {
            //makes the background of the bar white
               UITabBar.appearance().backgroundColor = .white
           }
        
       
       
    }
}

#Preview {
    TabPage(name: "", lastName: "", Username: "", maleFemale: true, posted: [])
}
