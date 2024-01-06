//
//  InputEquipmentView.swift
//  alchemist-logger
//
//  Created by 増倉豊 on 2024/01/03.
//

import SwiftUI

struct InputEquipmentView: View {

    @State private var arm_r = ""
    @State private var arm_l = ""
    @State private var armor = ""
    @State private var legs = ""
    @State private var accs1 = ""
    @State private var accs2 = ""

    var body: some View {
        VStack {
            HStack {
                Text("武器(右手)")
                    .frame(width: 150)
                TextField("現在の武器(右手)", text: $arm_r)
                    .frame(width: 200)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            HStack {
                Text("武器(左手)")
                    .frame(width: 150)
                TextField("現在の武器(左手)", text: $arm_l)
                    .frame(width: 200)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            HStack {
                Text("防具")
                    .frame(width: 150)
                TextField("現在の防具", text: $armor)
                    .frame(width: 200)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            HStack {
                Text("足具")
                    .frame(width: 150)
                TextField("現在の足具", text: $legs)
                    .frame(width: 200)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            HStack {
                Text("アクセサリー")
                    .frame(width: 150)
                TextField("現在のアクセサリ＾", text: $accs1)
                    .frame(width: 200)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            HStack {
                Text("アクセサリー")
                    .frame(width: 150)
                TextField("現在のアクセサリー", text: $accs2)
                    .frame(width: 200)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
        }
    }
}

struct InputEquipmentView_Previews: PreviewProvider {
    static var previews: some View {
        InputEquipmentView()
    }
}
