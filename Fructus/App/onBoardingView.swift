//
//  onBoardingView.swift
//  Fructus
//
//  Created by Yuru Zhou on 3/22/21.
//

import SwiftUI

struct onBoardingView: View {
    //MARK: - PROPERTIES
    var fruits:[Fruit] = fruitData
    //MARK: - BODY
    var body: some View {
        TabView{
            ForEach(fruits[0...5]){item in
                FruitCardView(fruit: item)
            }//:Loop
        }//: TabView
        .tabViewStyle(PageTabViewStyle()).padding(.vertical, 20)
    }
}
//MARK: - PREVIEW
struct onBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        onBoardingView(fruits: fruitData)
    }
}
