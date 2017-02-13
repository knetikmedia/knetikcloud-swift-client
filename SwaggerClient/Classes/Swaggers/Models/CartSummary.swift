//
// CartSummary.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class CartSummary: JSONEncodable {
    public enum Status: String { 
        case Active = "active"
        case Processing = "processing"
        case Closed = "closed"
        case Onhold = "onhold"
    }
    /** The date/time this resource was created in seconds since unix epoch */
    public var createdDate: Int64?
    /** The unique id code for the currency used in the cart */
    public var currencyCode: String?
    /** The grand total for the cart */
    public var grandTotal: Double?
    /** The unique ID for the cart */
    public var id: String?
    /** The ID of the invoice associated with this cart */
    public var invoiceId: Double?
    /** The number of items in the cart */
    public var itemsInCart: Int32?
    /** The status of the cart */
    public var status: Status?
    /** The subtotal of all items in the cart */
    public var subtotal: Double?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["created_date"] = self.createdDate?.encodeToJSON()
        nillableDictionary["currency_code"] = self.currencyCode
        nillableDictionary["grand_total"] = self.grandTotal
        nillableDictionary["id"] = self.id
        nillableDictionary["invoice_id"] = self.invoiceId
        nillableDictionary["items_in_cart"] = self.itemsInCart?.encodeToJSON()
        nillableDictionary["status"] = self.status?.rawValue
        nillableDictionary["subtotal"] = self.subtotal
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}