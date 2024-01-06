//
//  PetRaceLog.swift
//  alchemist-logger
//
//  Created by 増倉豊 on 2023/12/18.
//

import RealmSwift

/// `PetRaceLog`はペットレース戦績ログを表すRealmのオブジェクトです。
/// 記録日時、ペット名、戦略、メイン、競ぺ場、レースタイトル、コース、距離、方向、開始日時、天候、順位、賞金、副賞を持ちます。
class PetRaceLog: Object {
    dynamic var log_date: Date = Date() ///< 記録日時
    dynamic var pet_name: String? = nil ///< ペット名
    dynamic var strategy: String? = nil ///< 戦略
    dynamic var race_type: String? = nil ///< メイン
    dynamic var course_name: String? = nil ///< 競ぺ場
    dynamic var race_title: String? = nil ///< レースタイトル
    dynamic var course_type: String? = nil ///< コース
    dynamic var course_distance: String? = nil ///< 距離
    dynamic var turn_direction: String? = nil ///< 方向
    dynamic var start_datetime: NSDate? = nil ///< 開始日時
    dynamic var weather: String? = nil ///< 天候
    dynamic var result: String? = nil ///< 順位
    dynamic var prize_ma: Int? = nil ///< 賞金
    let prize_item = List<String>() ///< 副賞

    /// プライマリキーとして使用するカラムを指定します。
    override static func primaryKey() -> String? {
        return "log_date"
    }
}
