//
// NotificationResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class NotificationResource: JSONEncodable {
    public enum RecipientType: String { 
        case User = "user"
        case Topic = "topic"
    }
    /** The data to send to websockets. Also used to fill in the templates */
    public var data: AnyObject?
    /** The id of this individual notification. Default: random */
    public var notificationId: String?
    /** The id of the notification type which will define message templates */
    public var notificationTypeId: String?
    /** The id of the recipient, dependent on the recipient_type. The user&#39;s id or the topic&#39;s id */
    public var recipient: String?
    /** The type of recipient for the notification. Either a user, or all users in a topic */
    public var recipientType: RecipientType?
    /** The date this notification was sent */
    public var sendDate: Int64?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["data"] = self.data
        nillableDictionary["notification_id"] = self.notificationId
        nillableDictionary["notification_type_id"] = self.notificationTypeId
        nillableDictionary["recipient"] = self.recipient
        nillableDictionary["recipient_type"] = self.recipientType?.rawValue
        nillableDictionary["send_date"] = self.sendDate?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
