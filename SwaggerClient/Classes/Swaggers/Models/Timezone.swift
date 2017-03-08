//
// Timezone.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Timezone: JSONEncodable {
    public var code: String?
    public var id: Int32?
    public var name: String?
    public var offset: Double?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["code"] = self.code
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["name"] = self.name
        nillableDictionary["offset"] = self.offset
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}