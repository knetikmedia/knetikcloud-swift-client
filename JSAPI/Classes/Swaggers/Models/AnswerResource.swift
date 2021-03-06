//
// AnswerResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class AnswerResource: JSONEncodable {
    /** The answer to the question. Different &#39;type&#39; values indicate different structures as the answer may be test, image, etc. See information on additional properties for the list and their structures */
    public var answer: Property?
    /** Whether the answer is correct or not */
    public var correct: Bool?
    /** The unique ID for that resource */
    public var id: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["answer"] = self.answer?.encodeToJSON()
        nillableDictionary["correct"] = self.correct
        nillableDictionary["id"] = self.id
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
