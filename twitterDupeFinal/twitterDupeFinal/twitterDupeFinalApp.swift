//
//  twitterDupeFinalApp.swift
//  twitterDupeFinal
//
//  Created by StudentAM on 5/15/24.
//

import SwiftUI

@main
struct twitterDupeFinalApp: App {
    
    @State private var posted : [Postss] = [
        Postss(MaleFem: true, Userr: "NubiaStone", Text: "Today is so sunny and cute 😊🌞"),
        Postss(MaleFem: false, Userr: "JohnButterfly", Text: "Going to the beach #summer"),
        Postss(MaleFem: true, Userr: "KatieSmith", Text: "Happy Mothers Day to all Mothers")
    ]
    var body: some Scene {
        WindowGroup {
            ContentView(posted: posted)
        }
    }
}
