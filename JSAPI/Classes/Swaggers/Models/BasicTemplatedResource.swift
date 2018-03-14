//
// BasicTemplatedResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class BasicTemplatedResource: JSONEncodable {
    /** A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type */
    public var additionalProperties: [String:Property]?
    /** An article template this article is validated against (private). May be null and no validation of additional_properties will be done */
    public var template: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["additional_properties"] = self.additionalProperties?.encodeToJSON()
        nillableDictionary["template"] = self.template
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}