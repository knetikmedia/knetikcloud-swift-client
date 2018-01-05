//
// OperationResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Expressions are instructions for the rule engine to resolve certain values. For example instead of &#x60;user 1&#x60; it&#39;d state &#x60;user provided by the event&#x60;. Full list and definitions available at GET /bre/expressions. */
public class OperationResource: JSONEncodable {
    /** The arguments the operator apply to. See notes for details. */
    public var args: [ExpressionResource]?
    public var definition: String?
    /** The operator to be used in this predicate. See notes for details. */
    public var op: String?
    public var returnType: String?
    /** The operators supported by this expression */
    public var supportedOperators: [OperationDefinitionResource]?
    public var type: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["args"] = self.args?.encodeToJSON()
        nillableDictionary["definition"] = self.definition
        nillableDictionary["op"] = self.op
        nillableDictionary["return_type"] = self.returnType
        nillableDictionary["supported_operators"] = self.supportedOperators?.encodeToJSON()
        nillableDictionary["type"] = self.type
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}