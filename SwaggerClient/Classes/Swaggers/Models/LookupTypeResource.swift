//
// LookupTypeResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class LookupTypeResource: JSONEncodable {
    /** The description of the expression type */
    public var description: String?
    /** The variable type the key expression must be, or null if it&#39;s dependent (see description for explanation in this case) */
    public var keyType: String?
    /** The name of the expression type */
    public var name: String?
    /** The variable type of the value this expression returns, or null if it&#39;s dependent (see description for explanation in this case) */
    public var valueType: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["description"] = self.description
        nillableDictionary["key_type"] = self.keyType
        nillableDictionary["name"] = self.name
        nillableDictionary["value_type"] = self.valueType
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}