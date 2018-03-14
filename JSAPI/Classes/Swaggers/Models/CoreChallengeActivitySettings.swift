//
// CoreChallengeActivitySettings.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class CoreChallengeActivitySettings: JSONEncodable {
    public enum HostOption: String { 
        case AdminOnly = "admin_only"
        case Player = "player"
        case NonPlayer = "non_player"
    }
    public enum ResultsTrust: String { 
        case None = "none"
        case Host = "host"
        case All = "all"
    }
    /** Whether the host can boot a user while the status is PLAYING. Null to inherit from activity */
    public var bootInPlay: Bool?
    /** A custom address (url, ip or whatever is needed in your game) that users should connect to to play in this challenge rather than the usual game server. Max length: 255 */
    public var customLaunchAddress: String?
    /** Restriction for whether the host creating an occurrence can specify a custom launch address (such as their own ip address). Will override the challenge&#39;s custom_launch_address if they do. Null to inherit from activity */
    public var customLaunchAddressAllowed: Bool?
    /** Restriction for who can host an occurrence. admin disallows regular users, player means the user must also be a player in the occurrence if not admin, non-player means the user has the option to host without being a player. Null to inherit */
    public var hostOption: HostOption?
    /** Restriction for whether the host has control of the status once the game launches. If false they can only manage the game before (when setup and open). Max length: 255. Null to inherit from activity */
    public var hostStatusControl: Bool?
    /** Whether users can join while the status is PLAYING. Null to inherit from activity */
    public var joinInPlay: Bool?
    /** Whether users can leave while the status is PLAYING. Null to inherit from activity */
    public var leaveInPlay: Bool?
    /** The maximum number of players the game can hold. Null to inherit from activity */
    public var maxPlayers: Int32?
    /** The minimum number of players the game can hold. Null to inherit from activity */
    public var minPlayers: Int32?
    /** Restriction for who is able to report game end and results. Admin is always able to send results as well. Null to inherit from activity */
    public var resultsTrust: ResultsTrust?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["boot_in_play"] = self.bootInPlay
        nillableDictionary["custom_launch_address"] = self.customLaunchAddress
        nillableDictionary["custom_launch_address_allowed"] = self.customLaunchAddressAllowed
        nillableDictionary["host_option"] = self.hostOption?.rawValue
        nillableDictionary["host_status_control"] = self.hostStatusControl
        nillableDictionary["join_in_play"] = self.joinInPlay
        nillableDictionary["leave_in_play"] = self.leaveInPlay
        nillableDictionary["max_players"] = self.maxPlayers?.encodeToJSON()
        nillableDictionary["min_players"] = self.minPlayers?.encodeToJSON()
        nillableDictionary["results_trust"] = self.resultsTrust?.rawValue
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}