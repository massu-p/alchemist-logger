//
//  UserInfoModel.swift
//  alchemist-logger
//
//  Created by 増倉豊 on 2023/12/18.
//

import RealmSwift

/// `UserInfoLog`はユーザー情報ログを表すRealmのオブジェクトです。
/// 記録日時、ユーザー名、戦闘力、レベル、経験値、HP、MP、各種ステータス、装備情報を持ちます。
class UserInfoLog: Object {
    dynamic var log_date: Date = Date() ///< 記録日時
    dynamic var user_name: String? = nil ///< ユーザー名
    dynamic var battle_power: Int? = nil ///< 戦闘力
    dynamic var lv: Int? = nil ///< LV
    dynamic var exp: Int? = nil ///< EXP
    dynamic var hp: Int? = nil ///< HP
    dynamic var mp: Int? = nil ///< MP
    dynamic var str: Int? = nil ///< STR
    dynamic var dex: Int? = nil ///< DEX
    dynamic var agi: Int? = nil ///< AGI
    dynamic var int: Int? = nil ///< INT
    dynamic var vit: Int? = nil ///< VIT
    dynamic var luk: Int? = nil ///< LUK
    dynamic var arm_r: String? = nil ///< 武器(右手)
    dynamic var arm_l: String? = nil ///< 武器(左手)
    dynamic var armor: String? = nil ///< 防具
    dynamic var legs: String? = nil ///< 足具
    dynamic var accs1: String? = nil ///< アクセサリー1
    dynamic var accs2: String? = nil ///< アクセサリー2
    dynamic var job: String? = nil ///< 職業
    dynamic var cash: Int? = nil ///< 所持金
    dynamic var reincarnation: Int? = nil ///< 転生回数
    dynamic var ranking: Int? = nil ///< 英雄ランキング
    dynamic var post: String? = nil ///< 役職
    dynamic var floors_reached: Int? = nil ///< 最大到達階数
    dynamic var won_in_individual: Int? = nil ///< 優勝階数(個人)

    /// プライマリキーとして使用するカラムを指定します。
    override static func primaryKey() -> String? {
        return "log_date"
    }
}
