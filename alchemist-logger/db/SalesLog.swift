//
//  SalesLog.swift
//  alchemist-logger
//
//  Created by 増倉豊 on 2023/12/18.
//

import RealmSwift

class SalesLog: Object {
    @objc dynamic var log_date: Date = Date() // 記録日時
    @objc dynamic var buy_sale: String = "" // 売買
    let items = List<String>() // アイテム
    @objc dynamic var amount: Int = 0 // 金額
    @objc dynamic var customer: String? = nil // 顧客名

    override static func primaryKey() -> String? {
        return "log_date"
    }
}