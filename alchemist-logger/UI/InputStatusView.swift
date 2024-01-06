//
//  InputStatusView.swift
//  alchemist-logger
//
//  Created by 増倉豊 on 2024/01/03.
//

import SwiftUI

struct InputStatuView: View {
    
    @State private var battlePower = ""
    @State private var lv = ""
    @State private var exp = ""
    @State private var hp = ""
    @State private var mp = ""
    @State private var str = ""
    @State private var dex = ""
    @State private var agi = ""
    @State private var int = ""
    @State private var vit = ""
    @State private var luk = ""

    var body: some View {
        ScrollView([.horizontal]) {
            VStack {
                Text("あなたの強さを教えてください！")
                    .font(.title2)
                    .fontWeight(.bold)
                Group {
                    HStack {
                        Text("戦闘力")
                            .frame(width: 150)
                        TextField("戦闘力を入力してください", text: $battlePower)
                            .frame(width: 200)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    HStack {
                        Text("LV")
                            .frame(width: 150)
                        TextField("現在のLV", text: $lv)
                            .frame(width: 200)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    HStack {
                        Text("EXP")
                            .frame(width: 150)
                        TextField("現在のEXP", text: $exp)
                            .frame(width: 200)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                }
                Group {
                    HStack {
                        Text("HP")
                            .frame(width: 150)
                        TextField("現在のHP", text: $hp)
                            .frame(width: 200)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    HStack {
                        Text("MP")
                            .frame(width: 150)
                        TextField("現在のMP", text: $mp)
                            .frame(width: 200)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    HStack {
                        Text("STR")
                            .frame(width: 150)
                        TextField("現在のSTR", text: $str)
                            .frame(width: 200)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    HStack {
                        Text("DEX")
                            .frame(width: 150)
                        TextField("現在のDEX", text: $dex)
                            .frame(width: 200)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    HStack {
                        Text("AGI")
                            .frame(width: 150)
                        TextField("現在のAGI", text: $agi)
                            .frame(width: 200)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    HStack {
                        Text("INT")
                            .frame(width: 150)
                        TextField("現在のINT", text: $int)
                            .frame(width: 200)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    HStack {
                        Text("VIT")
                            .frame(width: 150)
                        TextField("現在のVIT", text: $vit)
                            .frame(width: 200)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    HStack {
                        Text("LUK")
                            .frame(width: 150)
                        TextField("現在のLUK", text: $luk)
                            .frame(width: 200)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                }
            }
        }
        .padding()
    }
}

struct InputStatuView_Previews: PreviewProvider {
    static var previews: some View {
        InputStatuView()
    }
}
