//
//  FruitRowView.swift
//  Fructus
//
//  Created by Yuru Zhou on 3/23/21.
//

import SwiftUI

struct FruitRowView: View {
    //MARK: - PROPERTIES
    var fruit: Fruit
    //MARK: - BODY
    var body: some View {
        HStack{
            Image(fruit.image).renderingMode(.original).resizable().scaledToFit().frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x : 2, y: 2)
                .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColor), startPoint: .top, endPoint: .bottom))
            VStack(alignment: .leading, spacing: 5){
                Text(fruit.title).font(.title2).fontWeight(.bold)
                Text(fruit.headline).font(.caption).foregroundColor(Color.secondary)
            }
        }//: HStack
        .cornerRadius(10)
    }
}
//MARK: - PREVIEW
struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitData[0]).previewLayout(.sizeThatFits).padding()
    }
}
