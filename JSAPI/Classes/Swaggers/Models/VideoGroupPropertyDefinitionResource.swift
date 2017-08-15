//
// VideoGroupPropertyDefinitionResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class VideoGroupPropertyDefinitionResource: JSONEncodable {
    /** A list of the fields on both the property definition and property of this type */
    public var fieldList: PropertyFieldListResource?
    /** The name of the property */
    public var name: String?
    /** Whether the property is required */
    public var _required: Bool?
    /** The type of the property. Used for polymorphic type recognition and thus must match an expected type with additional properties. */
    public var type: String?
    /** If provided, a file type that the property must match */
    public var fileType: String?
    /** If provided, the maximum number of files in the group */
    public var maxCount: Int32?
    /** If provided, the maximum allowed size per file in bytes */
    public var maxFileSize: Int64?
    /** If provided, the minimum number of files in the group */
    public var minCount: Int32?
    /** If provided, the maximum height of each video */
    public var maxHeight: Int32?
    /** If provided, the maximum length of each video */
    public var maxLength: Int32?
    /** If provided, the maximum width of each video */
    public var maxWidth: Int32?
    /** If provided, the minimum height of each video */
    public var minHeight: Int32?
    /** If provided, the minimum length of each video */
    public var minLength: Int32?
    /** If provided, the minimum width of each video */
    public var minWidth: Int32?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["field_list"] = self.fieldList?.encodeToJSON()
        nillableDictionary["name"] = self.name
        nillableDictionary["required"] = self._required
        nillableDictionary["type"] = self.type
        nillableDictionary["file_type"] = self.fileType
        nillableDictionary["max_count"] = self.maxCount?.encodeToJSON()
        nillableDictionary["max_file_size"] = self.maxFileSize?.encodeToJSON()
        nillableDictionary["min_count"] = self.minCount?.encodeToJSON()
        nillableDictionary["max_height"] = self.maxHeight?.encodeToJSON()
        nillableDictionary["max_length"] = self.maxLength?.encodeToJSON()
        nillableDictionary["max_width"] = self.maxWidth?.encodeToJSON()
        nillableDictionary["min_height"] = self.minHeight?.encodeToJSON()
        nillableDictionary["min_length"] = self.minLength?.encodeToJSON()
        nillableDictionary["min_width"] = self.minWidth?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}