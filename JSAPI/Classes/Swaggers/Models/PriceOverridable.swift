//
// PriceOverridable.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class PriceOverridable: JSONEncodable {
    public var description: String?
    /** Used for polymorphic type recognition and thus must match an expected type with additional properties */
    public var typeHint: String?
    /** The maximum price allowed */
    public var maxPrice: Double?
    /** The minimum price allowed */
    public var minPrice: Double?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["description"] = self.description
        nillableDictionary["type_hint"] = self.typeHint
        nillableDictionary["max_price"] = self.maxPrice
        nillableDictionary["min_price"] = self.minPrice
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
