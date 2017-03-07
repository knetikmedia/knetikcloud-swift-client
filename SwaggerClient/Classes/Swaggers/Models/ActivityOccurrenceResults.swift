//
// ActivityOccurrenceResults.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class ActivityOccurrenceResults: JSONEncodable {
    /** The game results for each user. Include all users that played (paid to get in) even if they were eliminated without a result. A null metric is allowed */
    public var users: [UserActivityResultsResource]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["users"] = self.users?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}