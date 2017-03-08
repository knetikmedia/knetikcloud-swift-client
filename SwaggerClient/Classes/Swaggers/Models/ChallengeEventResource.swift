//
// ChallengeEventResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class ChallengeEventResource: JSONEncodable {
    public enum RewardStatus: String { 
        case Pending = "pending"
        case Failed = "failed"
        case Complete = "complete"
        case Partial = "partial"
    }
    /** The id of the challenge */
    public var challengeId: Int64?
    /** The end date in seconds */
    public var endDate: Int64?
    /** The id of the challenge event */
    public var id: Int64?
    /** Indicate if the rewards have been given out already  */
    public var rewardStatus: RewardStatus?
    /** The start date in seconds */
    public var startDate: Int64?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["challenge_id"] = self.challengeId?.encodeToJSON()
        nillableDictionary["end_date"] = self.endDate?.encodeToJSON()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["reward_status"] = self.rewardStatus?.rawValue
        nillableDictionary["start_date"] = self.startDate?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}