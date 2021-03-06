//
// UserRelationshipResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class UserRelationshipResource: JSONEncodable {
    /** The child in the relationship */
    public var child: SimpleUserResource?
    /** Context about the relationship or its type */
    public var context: String?
    /** A generated unique id. Read-Only */
    public var id: Int64?
    /** The parent in the relationship */
    public var parent: SimpleUserResource?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["child"] = self.child?.encodeToJSON()
        nillableDictionary["context"] = self.context
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["parent"] = self.parent?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
