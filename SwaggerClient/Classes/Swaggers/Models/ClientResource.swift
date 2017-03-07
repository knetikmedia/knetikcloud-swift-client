//
// ClientResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class ClientResource: JSONEncodable {
    /** The time limit of the token in seconds */
    public var accessTokenValiditySeconds: Int32?
    /** The client key, cannot be edited once created */
    public var clientKey: String?
    /** The grant types of the client */
    public var grantTypes: [String]?
    /** The id of the client */
    public var id: Int32?
    /** Whether the client is public or not */
    public var isPublic: Bool?
    /** Whether a client is locked from being deleted */
    public var locked: Bool?
    /** The name of the client */
    public var name: String?
    /** The redirect uris of the client */
    public var redirectUris: [String]?
    /** The time limit of the refresh token in seconds */
    public var refreshTokenValiditySeconds: Int32?
    /** The secret key of the client */
    public var secret: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["access_token_validity_seconds"] = self.accessTokenValiditySeconds?.encodeToJSON()
        nillableDictionary["client_key"] = self.clientKey
        nillableDictionary["grant_types"] = self.grantTypes?.encodeToJSON()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["is_public"] = self.isPublic
        nillableDictionary["locked"] = self.locked
        nillableDictionary["name"] = self.name
        nillableDictionary["redirect_uris"] = self.redirectUris?.encodeToJSON()
        nillableDictionary["refresh_token_validity_seconds"] = self.refreshTokenValiditySeconds?.encodeToJSON()
        nillableDictionary["secret"] = self.secret
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}