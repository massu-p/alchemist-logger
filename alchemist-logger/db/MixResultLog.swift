//
//  MixResultLog.swift
//  alchemist-logger
//
//  Created by 増倉豊 on 2023/12/18.
//

import RealmSwift

/// `MixResultLog`は合成結果ログを表すRealmのオブジェクトです。
/// 記録日時、合成アイテム、結果を持ちます。
class MixResultLog: Object {
    @objc dynamic var log_date: Date = Date() ///< 記録日時
    @objc dynamic var mixed_item: String? = nil ///< 合成アイテム
    @objc dynamic var result: String? = nil ///< 結果

    /// プライマリキーとして使用するカラムを指定します。
    override static func primaryKey() -> String? {
        return "log_date"
    }
}