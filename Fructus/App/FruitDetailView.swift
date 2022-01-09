//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Yuru Zhou on 3/23/21.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: - PROPERTIES
    var fruit: Fruit
    //MARK: - BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 20){
                    //HEADER
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20){
                        //TITLE
                        Text(fruit.title).font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColor[1])
                        //HEADLINE
                        Text(fruit.headline).font(.headline).multilineTextAlignment(.leading)
                        //NURITIONS
                        FruitNutrientsView(fruit: fruit)
                        //SUBHEADING
                        Text("Learn More about \(fruit.title)".uppercased() )
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColor[1])
                        //DESCRIPTION
                        Text(fruit.description).multilineTextAlignment(.leading)
                        //LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }.padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }.navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }.edgesIgnoringSafeArea(.top)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}
//MARK: PREVIEW
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitData[0])
    }
}
