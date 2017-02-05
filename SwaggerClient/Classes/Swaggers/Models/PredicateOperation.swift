//
// PredicateOperation.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class PredicateOperation: JSONEncodable {
    public var args: [Expressionobject]?
    public var _operator: Operator?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["args"] = self.args?.encodeToJSON()
        nillableDictionary["operator"] = self._operator?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}