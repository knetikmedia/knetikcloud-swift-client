//
// Participant.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Participant: JSONEncodable {
    public enum Status: String { 
        case Present = "present"
        case Ready = "ready"
        case Left = "left"
        case Surrendered = "surrendered"
        case Disconnected = "disconnected"
    }
    /** Whether this user is the &#39;host&#39; of the occurrence and has increased access to settings/etc (default: false) */
    public var host: Bool?
    /** The current status of the user in the occurrence (default: present) */
    public var status: Status?
    /** The user */
    public var user: IdRef?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["host"] = self.host
        nillableDictionary["status"] = self.status?.rawValue
        nillableDictionary["user"] = self.user?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}