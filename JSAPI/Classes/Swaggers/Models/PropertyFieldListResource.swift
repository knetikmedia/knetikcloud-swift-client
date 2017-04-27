//
// PropertyFieldListResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class PropertyFieldListResource: JSONEncodable {
    /** A list of fields for the property definition. */
    public var propertyDefinitionFields: [PropertyFieldResource]?
    /** A list of fields for the property. */
    public var propertyFields: [PropertyFieldResource]?
    /** The type for the property this describes. */
    public var propertyType: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["property_definition_fields"] = self.propertyDefinitionFields?.encodeToJSON()
        nillableDictionary["property_fields"] = self.propertyFields?.encodeToJSON()
        nillableDictionary["property_type"] = self.propertyType
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}