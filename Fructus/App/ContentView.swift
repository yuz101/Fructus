//
//  ContentView.swift
//  Fructus
//
//  Created by Yuru Zhou on 3/17/21.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    var fruit:[Fruit] = fruitData
    @State private var isShowingSetting: Bool = false
    //MARK: - BODY
    var body: some View {
        NavigationView{
            List{
                ForEach(fruit.shuffled()){item in
                    NavigationLink(
                        destination: FruitDetailView(fruit: item)){
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                    }
                }
            }.navigationTitle("Fruits")
            .navigationBarItems(trailing:
                Button(action: {
                    isShowingSetting = true
                }, label: {
                    Image(systemName: "slider.horizontal.3")
                }).sheet(isPresented: $isShowingSetting){
                    SettingsView()
                }
            )
            
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}
//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruit: fruitData)
    }
}
