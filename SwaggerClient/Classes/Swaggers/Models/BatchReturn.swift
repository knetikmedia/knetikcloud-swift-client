//
// BatchReturn.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class BatchReturn: JSONEncodable {
    /** The result body */
    public var body: Result?
    /** The HTTP response code */
    public var code: Int32?
    /** Full URI of REST call */
    public var uri: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["body"] = self.body?.encodeToJSON()
        nillableDictionary["code"] = self.code?.encodeToJSON()
        nillableDictionary["uri"] = self.uri
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}