//
//  GamblingLog.swift
//  alchemist-logger
//
//  Created by 増倉豊 on 2023/12/18.
//

import RealmSwift

class GamblingLog: Object {
    @objc dynamic var log_date: Date = Date() // 記録日時
    @objc dynamic var event: String? = nil // 種目名
    @objc dynamic var stake: Int = 0 // 掛け金
    @objc dynamic var refund: Int = 0 // 払い戻し金

    override static func primaryKey() -> String? {
        return "log_date"
    }
}