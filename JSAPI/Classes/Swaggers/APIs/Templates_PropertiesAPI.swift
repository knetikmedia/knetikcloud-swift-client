//
// Templates_PropertiesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class Templates_PropertiesAPI: APIBase {
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
     - <b>Permissions Needed:</b> ANY
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant
     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "property_definition_fields" : [ {
    "inner_type" : "integer",
    "valid_values" : [ "valid_values", "valid_values" ],
    "name" : "name",
    "description" : "description",
    "type" : "integer",
    "inner_type_fields" : [ null, null ],
    "required" : false
  }, {
    "inner_type" : "integer",
    "valid_values" : [ "valid_values", "valid_values" ],
    "name" : "name",
    "description" : "description",
    "type" : "integer",
    "inner_type_fields" : [ null, null ],
    "required" : false
  } ],
  "property_type" : "property_type",
  "property_fields" : [ {
    "inner_type" : "integer",
    "valid_values" : [ "valid_values", "valid_values" ],
    "name" : "name",
    "description" : "description",
    "type" : "integer",
    "inner_type_fields" : [ null, null ],
    "required" : false
  }, {
    "inner_type" : "integer",
    "valid_values" : [ "valid_values", "valid_values" ],
    "name" : "name",
    "description" : "description",
    "type" : "integer",
    "inner_type_fields" : [ null, null ],
    "required" : false
  } ]
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
     - <b>Permissions Needed:</b> ANY
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant
     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example=[ {
  "property_definition_fields" : [ {
    "inner_type" : "integer",
    "valid_values" : [ "valid_values", "valid_values" ],
    "name" : "name",
    "description" : "description",
    "type" : "integer",
    "inner_type_fields" : [ null, null ],
    "required" : false
  }, {
    "inner_type" : "integer",
    "valid_values" : [ "valid_values", "valid_values" ],
    "name" : "name",
    "description" : "description",
    "type" : "integer",
    "inner_type_fields" : [ null, null ],
    "required" : false
  } ],
  "property_type" : "property_type",
  "property_fields" : [ {
    "inner_type" : "integer",
    "valid_values" : [ "valid_values", "valid_values" ],
    "name" : "name",
    "description" : "description",
    "type" : "integer",
    "inner_type_fields" : [ null, null ],
    "required" : false
  }, {
    "inner_type" : "integer",
    "valid_values" : [ "valid_values", "valid_values" ],
    "name" : "name",
    "description" : "description",
    "type" : "integer",
    "inner_type_fields" : [ null, null ],
    "required" : false
  } ]
}, {
  "property_definition_fields" : [ {
    "inner_type" : "integer",
    "valid_values" : [ "valid_values", "valid_values" ],
    "name" : "name",
    "description" : "description",
    "type" : "integer",
    "inner_type_fields" : [ null, null ],
    "required" : false
  }, {
    "inner_type" : "integer",
    "valid_values" : [ "valid_values", "valid_values" ],
    "name" : "name",
    "description" : "description",
    "type" : "integer",
    "inner_type_fields" : [ null, null ],
    "required" : false
  } ],
  "property_type" : "property_type",
  "property_fields" : [ {
    "inner_type" : "integer",
    "valid_values" : [ "valid_values", "valid_values" ],
    "name" : "name",
    "description" : "description",
    "type" : "integer",
    "inner_type_fields" : [ null, null ],
    "required" : false
  }, {
    "inner_type" : "integer",
    "valid_values" : [ "valid_values", "valid_values" ],
    "name" : "name",
    "description" : "description",
    "type" : "integer",
    "inner_type_fields" : [ null, null ],
    "required" : false
  } ]
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
