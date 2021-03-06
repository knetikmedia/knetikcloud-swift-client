//
// Spendable.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Spendable: JSONEncodable {
    public var description: String?
    /** Used for polymorphic type recognition and thus must match an expected type with additional properties */
    public var typeHint: String?
    /** The code of the currency */
    public var currencyCode: String?
    /** The spendable value */
    public var value: Int32?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["description"] = self.description
        nillableDictionary["type_hint"] = self.typeHint
        nillableDictionary["currency_code"] = self.currencyCode
        nillableDictionary["value"] = self.value?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
