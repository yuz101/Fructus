//
//  FructusApp.swift
//  Fructus
//
//  Created by Yuru Zhou on 3/17/21.
//

import SwiftUI
@main
struct FructusApp: App {
    @AppStorage("onBoarding") var isonBoarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isonBoarding{
                onBoardingView()
            }else{
                ContentView()
            }
        }
    }
}
