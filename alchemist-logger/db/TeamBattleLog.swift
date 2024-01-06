//
//  TeamBattleLog.swift
//  alchemist-logger
//
//  Created by 増倉豊 on 2023/12/18.
//

import RealmSwift

class TeamBattleLog: Object {
    @objc dynamic var log_date: Date = Date() ///< 記録日時
    @objc dynamic var result: String? = nil ///< 結果
    @objc dynamic var prize_ma: Int32 = 0 ///< 賞金
    let prize_item = List<String>() ///< 副賞

    override static func primaryKey() -> String? {
        return "log_date"
    }
}