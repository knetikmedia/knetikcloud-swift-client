//
// ChatMessageResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class ChatMessageResource: JSONEncodable {
    public enum RecipientType: String { 
        case User = "user"
        case Topic = "topic"
    }
    /** The content of the message */
    public var content: AnyObject?
    /** The date the chat message was created */
    public var createdDate: Int64?
    /** Whether the message has been edited */
    public var edited: Bool?
    /** The id for this message */
    public var id: String?
    /** The type of the message set by the client */
    public var messageType: String?
    /** The id of the recipient: user id or topic id */
    public var recipientId: String?
    /** The recipient type of the message */
    public var recipientType: RecipientType?
    /** The id of the sender */
    public var senderId: Int32?
    /** The id of the thread */
    public var threadId: String?
    /** The date the chat message was updated */
    public var updatedDate: Int64?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["content"] = self.content
        nillableDictionary["created_date"] = self.createdDate?.encodeToJSON()
        nillableDictionary["edited"] = self.edited
        nillableDictionary["id"] = self.id
        nillableDictionary["message_type"] = self.messageType
        nillableDictionary["recipient_id"] = self.recipientId
        nillableDictionary["recipient_type"] = self.recipientType?.rawValue
        nillableDictionary["sender_id"] = self.senderId?.encodeToJSON()
        nillableDictionary["thread_id"] = self.threadId
        nillableDictionary["updated_date"] = self.updatedDate?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
