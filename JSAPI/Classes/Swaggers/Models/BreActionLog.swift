//
// BreActionLog.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class BreActionLog: JSONEncodable {
    /** The name of the action */
    public var name: String?
    /** The runtime of the action in milliseconds */
    public var runtime: Int64?
    /** The status of the action (ran, failed) */
    public var status: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["name"] = self.name
        nillableDictionary["runtime"] = self.runtime?.encodeToJSON()
        nillableDictionary["status"] = self.status
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
