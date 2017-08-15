//
// DatabaseConfig.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class DatabaseConfig: JSONEncodable {
    public var mongo: MongoDatabaseConfig?
    public var sql: SqlDatabaseConfig?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["mongo"] = self.mongo?.encodeToJSON()
        nillableDictionary["sql"] = self.sql?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}