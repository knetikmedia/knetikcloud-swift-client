//
// UserResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class UserResource: JSONEncodable {
    /** A map of additional properties, keyed on the property name (private). Must match the names and types defined in the template for this user type, or be an extra not from the template */
    public var additionalProperties: [String:Property]?
    /** The first line of the user&#39;s address (private) */
    public var address: String?
    /** The second line of user&#39;s address (private) */
    public var address2: String?
    /** The url of the user&#39;s avatar image */
    public var avatarUrl: String?
    /** Relationships where this user is the parent. Read-Only, manage through separate endpoints */
    public var children: [UserRelationshipReferenceResource]?
    /** The user&#39;s city (private) */
    public var city: String?
    /** The ISO3 code for the country from the user&#39;s address (private). Will be filled in based on GeoIP country at registration if not provided. */
    public var countryCode: String?
    /** The code for the user&#39;s real money currency (private) */
    public var currencyCode: String?
    /** The user&#39;s date of birth (private) as a unix timestamp */
    public var dateOfBirth: Int64?
    /** The user&#39;s self description (private) */
    public var description: String?
    /** The chosen display name of the user, defaults to username if not present */
    public var displayName: String?
    /** The user&#39;s email address (private). May be required and/or unique depending on system configuration (both on by default). Must match standard email requirements if provided (RFC 2822) */
    public var email: String?
    /** The user&#39;s first name (private) */
    public var firstName: String?
    /** The user&#39;s full name (private) */
    public var fullname: String?
    /** The user&#39;s gender (private) */
    public var gender: String?
    /** The id of the user */
    public var id: Int32?
    /** The ISO3 code for the user&#39;s currency (private) */
    public var languageCode: String?
    /** The date the user last interacted with the API (private) */
    public var lastActivity: Int64?
    /** The user&#39;s last name (private) */
    public var lastName: String?
    /** The date the user&#39;s info was last updated as a unix timestamp */
    public var lastUpdated: Int64?
    /** The user&#39;s date of registration as a unix timestamp */
    public var memberSince: Int64?
    /** The user&#39;s mobile phone number (private) */
    public var mobileNumber: String?
    /** Relationships where this user is the child. Read-Only, manage through separate endpoints */
    public var parents: [UserRelationshipReferenceResource]?
    /** The plain text password for the new user account. Required for registration; ignored on profile update.  Use password specific endpoints for editing */
    public var password: String?
    /** The user&#39;s postal code (private) */
    public var postalCode: String?
    /** The user&#39;s state (private) */
    public var state: String?
    /** Tags on the user. Can only be set by admin. Max length per tag is 64 characters */
    public var tags: [String]?
    /** A user template this user is validated against (private). May be null and no validation of properties will be done */
    public var template: String?
    /** The code for the user&#39;s timezone (private) */
    public var timezoneCode: String?
    /** The login username for the user (private). May be set to match email if system does not require usernames separately. */
    public var username: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["additional_properties"] = self.additionalProperties?.encodeToJSON()
        nillableDictionary["address"] = self.address
        nillableDictionary["address2"] = self.address2
        nillableDictionary["avatar_url"] = self.avatarUrl
        nillableDictionary["children"] = self.children?.encodeToJSON()
        nillableDictionary["city"] = self.city
        nillableDictionary["country_code"] = self.countryCode
        nillableDictionary["currency_code"] = self.currencyCode
        nillableDictionary["date_of_birth"] = self.dateOfBirth?.encodeToJSON()
        nillableDictionary["description"] = self.description
        nillableDictionary["display_name"] = self.displayName
        nillableDictionary["email"] = self.email
        nillableDictionary["first_name"] = self.firstName
        nillableDictionary["fullname"] = self.fullname
        nillableDictionary["gender"] = self.gender
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["language_code"] = self.languageCode
        nillableDictionary["last_activity"] = self.lastActivity?.encodeToJSON()
        nillableDictionary["last_name"] = self.lastName
        nillableDictionary["last_updated"] = self.lastUpdated?.encodeToJSON()
        nillableDictionary["member_since"] = self.memberSince?.encodeToJSON()
        nillableDictionary["mobile_number"] = self.mobileNumber
        nillableDictionary["parents"] = self.parents?.encodeToJSON()
        nillableDictionary["password"] = self.password
        nillableDictionary["postal_code"] = self.postalCode
        nillableDictionary["state"] = self.state
        nillableDictionary["tags"] = self.tags?.encodeToJSON()
        nillableDictionary["template"] = self.template
        nillableDictionary["timezone_code"] = self.timezoneCode
        nillableDictionary["username"] = self.username
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
