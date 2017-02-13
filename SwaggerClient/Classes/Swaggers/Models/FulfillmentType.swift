//
// FulfillmentType.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class FulfillmentType: JSONEncodable {
    /** Whether the type is core and cannot be altered/deleted, read-only */
    public var core: Bool?
    /** A description of the type */
    public var description: String?
    /** The unique id of the type, read-only */
    public var id: Int32?
    /** The name of the type */
    public var name: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["core"] = self.core
        nillableDictionary["description"] = self.description
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["name"] = self.name
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}