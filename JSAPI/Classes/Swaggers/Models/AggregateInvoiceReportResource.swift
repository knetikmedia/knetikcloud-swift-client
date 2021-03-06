//
// AggregateInvoiceReportResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class AggregateInvoiceReportResource: JSONEncodable {
    public var count: Int64?
    public var date: String?
    public var revenue: Double?
    public var userCount: Int64?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["count"] = self.count?.encodeToJSON()
        nillableDictionary["date"] = self.date
        nillableDictionary["revenue"] = self.revenue
        nillableDictionary["user_count"] = self.userCount?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
