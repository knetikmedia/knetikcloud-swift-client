//
// CartItemRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class CartItemRequest: JSONEncodable {
    /** The affiliate key of the item */
    public var affiliateKey: String?
    /** The catalog SKU of the item */
    public var catalogSku: String?
    /** The quantity of the item */
    public var quantity: Int32?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["affiliate_key"] = self.affiliateKey
        nillableDictionary["catalog_sku"] = self.catalogSku
        nillableDictionary["quantity"] = self.quantity?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}