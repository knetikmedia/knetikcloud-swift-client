//
// TemplatesPropertiesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class TemplatesPropertiesAPI: APIBase {
    /**
     Get details for a template property type
     
     - parameter type: (path) type 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getTemplatePropertyType(type type: String, completion: ((data: PropertyFieldListResource?, error: ErrorType?) -> Void)) {
        getTemplatePropertyTypeWithRequestBuilder(type: type).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get details for a template property type
     - GET /templates/properties/{type}
     - examples: [{contentType=application/json, example={
  "property_definition_fields" : [ {
    "inner_type" : "integer",
    "valid_values" : [ "aeiou" ],
    "name" : "aeiou",
    "description" : "aeiou",
    "type" : "integer",
    "inner_type_fields" : [ "" ],
    "required" : false
  } ],
  "property_type" : "aeiou",
  "property_fields" : [ "" ]
}}]
     
     - parameter type: (path) type 

     - returns: RequestBuilder<PropertyFieldListResource> 
     */
    public class func getTemplatePropertyTypeWithRequestBuilder(type type: String) -> RequestBuilder<PropertyFieldListResource> {
        var path = "/templates/properties/{type}"
        path = path.stringByReplacingOccurrencesOfString("{type}", withString: "\(type)", options: .LiteralSearch, range: nil)
        let URLString = JSAPIAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PropertyFieldListResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     List template property types
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getTemplatePropertyTypes(completion: ((data: [PropertyFieldListResource]?, error: ErrorType?) -> Void)) {
        getTemplatePropertyTypesWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     List template property types
     - GET /templates/properties
     - examples: [{contentType=application/json, example=[ {
  "property_definition_fields" : [ {
    "inner_type" : "integer",
    "valid_values" : [ "aeiou" ],
    "name" : "aeiou",
    "description" : "aeiou",
    "type" : "integer",
    "inner_type_fields" : [ "" ],
    "required" : false
  } ],
  "property_type" : "aeiou",
  "property_fields" : [ "" ]
} ]}]

     - returns: RequestBuilder<[PropertyFieldListResource]> 
     */
    public class func getTemplatePropertyTypesWithRequestBuilder() -> RequestBuilder<[PropertyFieldListResource]> {
        let path = "/templates/properties"
        let URLString = JSAPIAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[PropertyFieldListResource]>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}