//
// SubscriptionPlan.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class SubscriptionPlan: JSONEncodable {
    public enum Availability: String { 
        case All = "all"
        case NewSubscribers = "new_subscribers"
    }
    public enum FirstBillUnitOfTime: String { 
        case Millisecond = "millisecond"
        case Second = "second"
        case Minute = "minute"
        case Hour = "hour"
        case Day = "day"
        case Week = "week"
        case Month = "month"
        case Year = "year"
    }
    public enum RenewPeriodUnitOfTime: String { 
        case Millisecond = "millisecond"
        case Second = "second"
        case Minute = "minute"
        case Hour = "hour"
        case Day = "day"
        case Week = "week"
        case Month = "month"
        case Year = "year"
    }
    public var additionalProperties: [String:Property]?
    public var availability: Availability?
    public var billGraceDays: Int32?
    public var consolidated: Bool?
    public var firstBill: Int32?
    public var firstBillUnitOfTime: FirstBillUnitOfTime?
    public var id: String?
    public var latePaymentSku: String?
    public var locked: Bool?
    public var maxAutoRenew: Int32?
    public var maxBillAttempts: Int32?
    public var migrationPlan: String?
    public var minimumTerm: Int32?
    public var name: String?
    public var primarySku: String?
    public var reactivationSku: String?
    public var recurringSku: String?
    public var renewPeriod: Int32?
    public var renewPeriodUnitOfTime: RenewPeriodUnitOfTime?
    public var subscriptionId: Int32?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["additional_properties"] = self.additionalProperties?.encodeToJSON()
        nillableDictionary["availability"] = self.availability?.rawValue
        nillableDictionary["bill_grace_days"] = self.billGraceDays?.encodeToJSON()
        nillableDictionary["consolidated"] = self.consolidated
        nillableDictionary["first_bill"] = self.firstBill?.encodeToJSON()
        nillableDictionary["first_bill_unit_of_time"] = self.firstBillUnitOfTime?.rawValue
        nillableDictionary["id"] = self.id
        nillableDictionary["late_payment_sku"] = self.latePaymentSku
        nillableDictionary["locked"] = self.locked
        nillableDictionary["max_auto_renew"] = self.maxAutoRenew?.encodeToJSON()
        nillableDictionary["max_bill_attempts"] = self.maxBillAttempts?.encodeToJSON()
        nillableDictionary["migration_plan"] = self.migrationPlan
        nillableDictionary["minimum_term"] = self.minimumTerm?.encodeToJSON()
        nillableDictionary["name"] = self.name
        nillableDictionary["primary_sku"] = self.primarySku
        nillableDictionary["reactivation_sku"] = self.reactivationSku
        nillableDictionary["recurring_sku"] = self.recurringSku
        nillableDictionary["renew_period"] = self.renewPeriod?.encodeToJSON()
        nillableDictionary["renew_period_unit_of_time"] = self.renewPeriodUnitOfTime?.rawValue
        nillableDictionary["subscription_id"] = self.subscriptionId?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
