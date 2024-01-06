//
//  UserSettingView.swift
//  alchemist-logger
//
//  Created by 増倉豊 on 2023/12/27.
//

import SwiftUI

struct UserSettingView: View {
    
    @State private var startDate = Date()
    @State private var userName = ""
    @State private var job = ""
    @State private var cash = ""
    @State private var reincarnation = ""
    @State private var ranking = ""
    @State private var post = ""
    @State private var floors_reached = ""
    @State private var won_in_individual = ""

    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            Text("あなたのことを教えてください！")
                .font(.title2)
                .fontWeight(.bold)
            ScrollView([.horizontal]) {
                VStack(alignment: .center) {
                    Group {
                        HStack {
                            Text("登録日")
                                .frame(width: 150)
                            DatePicker("登録日", selection: $startDate, displayedComponents: .date)
                                .frame(width: 200)
                                .labelsHidden()
                                .environment(\.locale, Locale(identifier: "ja_JP"))
                        }
                        HStack {
                            Text("ユーザー名")
                                .frame(width: 150)
                            TextField("ユーザー名を入力してください", text: $userName)
                                .frame(width: 200)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                    }
                    Group {
                        HStack {
                            Text("職業")
                                .frame(width: 150)
                            TextField("現在の職業", text: $job)
                                .frame(width: 200)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                        HStack {
                            Text("所持金")
                                .frame(width: 150)
                            TextField("現在の所持金", text: $cash)
                                .frame(width: 200)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                        HStack {
                            Text("転生回数")
                                .frame(width: 150)
                            TextField("現在の転生回数", text: $reincarnation)
                                .frame(width: 200)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                        HStack {
                            Text("英雄ランキング")
                                .frame(width: 150)
                            TextField("現在の英雄ランキング", text: $ranking)
                                .frame(width: 200)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                        HStack {
                            Text("役職")
                                .frame(width: 150)
                            TextField("現在の役職", text: $post)
                                .frame(width: 200)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                        HStack {
                            Text("最大到達階")
                                .frame(width: 150)
                            TextField("現在の最大到達回数", text: $floors_reached)
                                .frame(width: 200)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                        HStack {
                            Text("優勝回数(個人)")
                                .frame(width: 150)
                            TextField("現在の優勝回数(個人)", text: $won_in_individual)
                                .frame(width: 200)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                    }
                }
                .padding()
            }
            Spacer()
            Button(
                action: {},
                label: { Text("次へ") }
            )
        }
    }
}

struct UserSettingView_Previews: PreviewProvider {
    static var previews: some View {
        UserSettingView()
    }
}
