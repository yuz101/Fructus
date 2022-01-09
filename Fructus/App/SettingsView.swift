//
//  SettingsView.swift
//  Fructus
//
//  Created by Yuru Zhou on 3/26/21.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isonBoarding") var isonBoarding: Bool = false
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20) {
                    GroupBox(label:
                        SettingLabelView(labelText: "Fructus", labelImage:"info, circle")
                    ){
                        Divider().padding(.vertical, 4)
                        HStack(spacing: 10){
                            Image("logo").resizable().scaledToFit().frame(width: 80, height: 80).cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium and calories. None have cholesterol. Fruits are sources of money, essential nutrients, including potassium, dietary fiber, vitamins and much more.").font(.footnote)
                        }
                    }
                    GroupBox(label:
                        SettingLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ){
                        Divider().padding(.vertical, 4)
                        Text("If you wish, you can restart the application by toggle the switch in this box. That's where it starts the onboarding process and you will see the welcome screen again.").padding(.vertical, 8).frame(minHeight: 60).layoutPriority(1)
                            .font(.footnote).multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isonBoarding){
                            Text("Restart".uppercased())
                        }.padding()
                        .background(Color(UIColor.tertiarySystemBackground)).clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                        
                    }
                }.navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing:
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                    })
                )
                .padding()
            }
        }
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
