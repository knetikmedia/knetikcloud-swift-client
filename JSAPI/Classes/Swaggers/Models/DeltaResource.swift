//
// DeltaResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class DeltaResource: JSONEncodable {
    public enum State: String { 
        case Updated = "UPDATED"
        case Removed = "REMOVED"
    }
    /** The id of the category for question */
    public var categoryId: String?
    /** The media type of the question */
    public var mediaType: String?
    /** The id of the question */
    public var questionId: String?
    /** Whether the question was updated or removed */
    public var state: State?
    /** The tags for the question */
    public var tags: [String]?
    /** The date this question was last updated in seconds since unix epoch */
    public var updatedDate: Int64?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["category_id"] = self.categoryId
        nillableDictionary["media_type"] = self.mediaType
        nillableDictionary["question_id"] = self.questionId
        nillableDictionary["state"] = self.state?.rawValue
        nillableDictionary["tags"] = self.tags?.encodeToJSON()
        nillableDictionary["updated_date"] = self.updatedDate?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
