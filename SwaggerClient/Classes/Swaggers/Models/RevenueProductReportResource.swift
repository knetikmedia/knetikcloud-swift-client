//
// RevenueProductReportResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class RevenueProductReportResource: JSONEncodable {
    public var itemId: Int32?
    public var itemName: String?
    public var revenue: Double?
    public var volume: Int64?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["item_id"] = self.itemId?.encodeToJSON()
        nillableDictionary["item_name"] = self.itemName
        nillableDictionary["revenue"] = self.revenue
        nillableDictionary["volume"] = self.volume?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}