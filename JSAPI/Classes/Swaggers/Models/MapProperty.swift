//
// MapProperty.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class MapProperty: JSONEncodable {
    /** The type of the property. Used for polymorphic type recognition and thus must match an expected type with additional properties. */
    public var type: String?
    /** A map/object of string to sub-property */
    public var map: [String:Property]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["type"] = self.type
        nillableDictionary["map"] = self.map?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}