//
// UserNotificationStatusWrapper.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class UserNotificationStatusWrapper: JSONEncodable {
    public enum Value: String { 
        case Pending = "pending"
        case Read = "read"
        case Hidden = "hidden"
    }
    public var value: Value?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["value"] = self.value?.rawValue
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}