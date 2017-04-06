//
// RewardCurrencyResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class RewardCurrencyResource: JSONEncodable {
    /** The code of the currency type to give */
    public var currencyCode: String?
    /** The name of the currency reward to give.  Set by currency_code) */
    public var currencyName: String?
    /** The highest number (worst) rank to give the reward to. Must be greater than or equal to minRank */
    public var maxRank: Int32?
    /** The lowest number (best) rank to give the reward to. Must be greater than zero */
    public var minRank: Int32?
    /** True if the value is actually a percentage of the intake */
    public var percent: Bool?
    /** The amount of currency to give. For percentage values, 0.5 is 50% */
    public var value: Double?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["currency_code"] = self.currencyCode
        nillableDictionary["currency_name"] = self.currencyName
        nillableDictionary["max_rank"] = self.maxRank?.encodeToJSON()
        nillableDictionary["min_rank"] = self.minRank?.encodeToJSON()
        nillableDictionary["percent"] = self.percent
        nillableDictionary["value"] = self.value
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}