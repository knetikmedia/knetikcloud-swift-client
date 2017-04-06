//
// InvoiceItemResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class InvoiceItemResource: JSONEncodable {
    public var affiliateId: Int32?
    public var bundleSku: String?
    public var currentFulfillmentStatus: String?
    public var id: Int32?
    public var invoiceId: Int32?
    public var itemId: Int32?
    public var itemName: String?
    public var originalTotalPrice: Double?
    public var originalUnitPrice: Double?
    public var qty: Int32?
    public var saleName: String?
    public var sku: String?
    public var skuDescription: String?
    public var systemPrice: Double?
    public var totalPrice: Double?
    public var typeHint: String?
    public var unitPrice: Double?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["affiliate_id"] = self.affiliateId?.encodeToJSON()
        nillableDictionary["bundle_sku"] = self.bundleSku
        nillableDictionary["current_fulfillment_status"] = self.currentFulfillmentStatus
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["invoice_id"] = self.invoiceId?.encodeToJSON()
        nillableDictionary["item_id"] = self.itemId?.encodeToJSON()
        nillableDictionary["item_name"] = self.itemName
        nillableDictionary["original_total_price"] = self.originalTotalPrice
        nillableDictionary["original_unit_price"] = self.originalUnitPrice
        nillableDictionary["qty"] = self.qty?.encodeToJSON()
        nillableDictionary["sale_name"] = self.saleName
        nillableDictionary["sku"] = self.sku
        nillableDictionary["sku_description"] = self.skuDescription
        nillableDictionary["system_price"] = self.systemPrice
        nillableDictionary["total_price"] = self.totalPrice
        nillableDictionary["type_hint"] = self.typeHint
        nillableDictionary["unit_price"] = self.unitPrice
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}