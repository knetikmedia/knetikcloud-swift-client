//
// TokenDetailsResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class TokenDetailsResource: JSONEncodable {
    public var clientId: String?
    public var roles: [String]?
    public var userId: Int32?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["client_id"] = self.clientId
        nillableDictionary["roles"] = self.roles?.encodeToJSON()
        nillableDictionary["user_id"] = self.userId?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
