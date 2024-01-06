//
//  PreferredCustomerList.swift
//  alchemist-logger
//
//  Created by 増倉豊 on 2023/12/18.
//

import RealmSwift

class PreferredCustomerList: Object {
    @objc dynamic var customer: String = "" // 顧客名
    @objc dynamic var transactions: Int = 0 // 売買数
    @objc dynamic var amount_to: Int = 0 // 入金
    @objc dynamic var amount_by: Int = 0 // 出金

    override static func primaryKey() -> String? {
        return "customer"
    }
}