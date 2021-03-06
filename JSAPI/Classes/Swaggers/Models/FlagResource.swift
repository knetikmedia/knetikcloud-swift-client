//
// FlagResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class FlagResource: JSONEncodable {
    /** The context of that resource */
    public var context: String?
    /** The context_id of that resource */
    public var contextId: String?
    /** The date/time this resource was created in seconds since epoch */
    public var createdDate: Int64?
    /** The unique ID for that resource */
    public var id: Int64?
    /** The flag reason of that resource */
    public var reason: String?
    /** The date/time this resource was last updated in seconds since epoch */
    public var updatedDate: Int64?
    /** The basic user resource */
    public var user: SimpleUserResource?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["context"] = self.context
        nillableDictionary["context_id"] = self.contextId
        nillableDictionary["created_date"] = self.createdDate?.encodeToJSON()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["reason"] = self.reason
        nillableDictionary["updated_date"] = self.updatedDate?.encodeToJSON()
        nillableDictionary["user"] = self.user?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
