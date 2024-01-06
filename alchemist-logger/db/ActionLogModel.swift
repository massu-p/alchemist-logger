//
//  ActionLogModel.swift
//  alchemist-logger
//
//  Created by 増倉豊 on 2023/12/18.
//

import RealmSwift

/// `ActionLog`は行動ログを表すRealmのオブジェクトです。
/// 記録日時、行動、探索階層、取得アイテム、取得経験値、取得マー、喪失アイテム、喪失マー、レベルアップ、ペット行動、ドロップ率UP、対象ユーザー名、行動結果を持ちます。
class ActionLog: Object {
    dynamic var log_date: Date = Date() ///< 記録日時
    dynamic var action: String? = nil ///< 行動
    dynamic var search_level: Int? = nil ///< 探索階層
    let get_item = List<String>() ///< 取得アイテム
    dynamic var get_exp: String? = nil ///< 取得経験値
    dynamic var get_ma: Int? = nil ///< 取得マー
    let lost_item = List<String>() ///< 喪失アイテム
    dynamic var lost_ma: Int? = nil ///< 喪失マー
    dynamic var lv_up: Bool? = nil ///< レベルアップ
    dynamic var pet_action: String? = nil ///< ペット行動
    dynamic var drop_up: Bool? = nil ///< ドロップ率UP
    dynamic var user_name: String? = nil ///< 対象ユーザー名
    dynamic var action_result: String? = nil ///< 行動結果

    /// プライマリキーとして使用するカラムを指定します。
    override static func primaryKey() -> String? {
        return "log_date"
    }
}
