//
// Group.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Group: JSONEncodable {
    public enum Status: String { 
        case Open = "open"
        case Closed = "closed"
    }
    public var additionalProperties: [String:Property]?
    public var description: String?
    public var id: Int32?
    public var memberCount: Int32?
    public var messageOfTheDay: String?
    public var name: String?
    public var parent: Group?
    public var propertiesString: String?
    public var status: Status?
    public var subMemberCount: Int32?
    public var template: String?
    public var uniqueName: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["additional_properties"] = self.additionalProperties?.encodeToJSON()
        nillableDictionary["description"] = self.description
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["member_count"] = self.memberCount?.encodeToJSON()
        nillableDictionary["message_of_the_day"] = self.messageOfTheDay
        nillableDictionary["name"] = self.name
        nillableDictionary["parent"] = self.parent?.encodeToJSON()
        nillableDictionary["properties_string"] = self.propertiesString
        nillableDictionary["status"] = self.status?.rawValue
        nillableDictionary["sub_member_count"] = self.subMemberCount?.encodeToJSON()
        nillableDictionary["template"] = self.template
        nillableDictionary["unique_name"] = self.uniqueName
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}