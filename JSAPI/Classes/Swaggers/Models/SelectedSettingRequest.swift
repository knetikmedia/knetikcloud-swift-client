//
// SelectedSettingRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class SelectedSettingRequest: JSONEncodable {
    /** The unique ID for the setting */
    public var key: String?
    /** The unique ID for the option. Must match one of the options from this setting in the activity, if not part of a challenge */
    public var value: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["key"] = self.key
        nillableDictionary["value"] = self.value
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
