//
// WebsocketMessageResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class WebsocketMessageResource: JSONEncodable {
    /** The body of the outgoing message. */
    public var content: AnyObject?
    /** A message type to inform websocket recipient how to parse content */
    public var messageType: String?
    /** A list of user ids to send the message to. */
    public var recipients: [Int32]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["content"] = self.content
        nillableDictionary["message_type"] = self.messageType
        nillableDictionary["recipients"] = self.recipients?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
