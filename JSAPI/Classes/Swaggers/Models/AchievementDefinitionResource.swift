//
// AchievementDefinitionResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class AchievementDefinitionResource: JSONEncodable {
    /** A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this resource type */
    public var additionalProperties: [String:Property]?
    /** The date/time this resource was created in seconds since unix epoch */
    public var createdDate: Int64?
    /** The description of the achievement. Must be at least 2 characters in length. */
    public var description: String?
    /** Whether the achievement is hidden from the user */
    public var hidden: Bool?
    /** The name of the achievement. Must be at least 6 characters in length. IMMUTABLE */
    public var name: String?
    /** The required progress for the achievement definition */
    public var requiredProgress: Int32?
    /** The id of the rule generated for this achievement */
    public var ruleId: String?
    /** The tags for the achievement definition */
    public var tags: [String]?
    /** An achievement template this achievement is validated against (private). May be null and no validation of additional_properties will be done */
    public var template: String?
    /** The name of the trigger event associated with this achievement */
    public var triggerEventName: String?
    /** The date/time this resource was last updated in seconds since unix epoch */
    public var updatedDate: Int64?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["additional_properties"] = self.additionalProperties?.encodeToJSON()
        nillableDictionary["created_date"] = self.createdDate?.encodeToJSON()
        nillableDictionary["description"] = self.description
        nillableDictionary["hidden"] = self.hidden
        nillableDictionary["name"] = self.name
        nillableDictionary["required_progress"] = self.requiredProgress?.encodeToJSON()
        nillableDictionary["rule_id"] = self.ruleId
        nillableDictionary["tags"] = self.tags?.encodeToJSON()
        nillableDictionary["template"] = self.template
        nillableDictionary["trigger_event_name"] = self.triggerEventName
        nillableDictionary["updated_date"] = self.updatedDate?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
