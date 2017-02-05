//
// FulfillmentAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class FulfillmentAPI: APIBase {
    /**
     Create a fulfillment type
     
     - parameter type: (body) The fulfillment type (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func createFulfillmentTypeUsingPOST(type type: FulfillmentType? = nil, completion: ((data: FulfillmentType?, error: ErrorType?) -> Void)) {
        createFulfillmentTypeUsingPOSTWithRequestBuilder(type: type).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create a fulfillment type
     - POST /store/fulfillment/types
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     - examples: [{contentType=application/json, example={
  "core" : false,
  "name" : "aeiou",
  "description" : "aeiou",
  "id" : 123
}}]
     
     - parameter type: (body) The fulfillment type (optional)

     - returns: RequestBuilder<FulfillmentType> 
     */
    public class func createFulfillmentTypeUsingPOSTWithRequestBuilder(type type: FulfillmentType? = nil) -> RequestBuilder<FulfillmentType> {
        let path = "/store/fulfillment/types"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = type?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<FulfillmentType>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a fulfillment type
     
     - parameter id: (path) The id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteFulfillmentTypeUsingDELETE(id id: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteFulfillmentTypeUsingDELETEWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a fulfillment type
     - DELETE /store/fulfillment/types/{id}
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     
     - parameter id: (path) The id 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteFulfillmentTypeUsingDELETEWithRequestBuilder(id id: Int32) -> RequestBuilder<Void> {
        var path = "/store/fulfillment/types/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a single fulfillment type
     
     - parameter id: (path) The id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getFulfillmentTypeUsingGET(id id: Int32, completion: ((data: FulfillmentType?, error: ErrorType?) -> Void)) {
        getFulfillmentTypeUsingGETWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a single fulfillment type
     - GET /store/fulfillment/types/{id}
     - examples: [{contentType=application/json, example={
  "core" : false,
  "name" : "aeiou",
  "description" : "aeiou",
  "id" : 123
}}]
     
     - parameter id: (path) The id 

     - returns: RequestBuilder<FulfillmentType> 
     */
    public class func getFulfillmentTypeUsingGETWithRequestBuilder(id id: Int32) -> RequestBuilder<FulfillmentType> {
        var path = "/store/fulfillment/types/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<FulfillmentType>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     List and search fulfillment types
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getFulfillmentsUsingGET(size size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: ((data: PageResourceFulfillmentType?, error: ErrorType?) -> Void)) {
        getFulfillmentsUsingGETWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     List and search fulfillment types
     - GET /store/fulfillment/types
     - examples: [{contentType=application/json, example={
  "number" : 123,
  "last" : true,
  "size" : 123,
  "total_elements" : 123456789,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "aeiou",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "aeiou"
  } ],
  "total_pages" : 123,
  "number_of_elements" : 123,
  "content" : [ {
    "core" : false,
    "name" : "aeiou",
    "description" : "aeiou",
    "id" : 123
  } ],
  "first" : true
}}]
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<PageResourceFulfillmentType> 
     */
    public class func getFulfillmentsUsingGETWithRequestBuilder(size size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceFulfillmentType> {
        let path = "/store/fulfillment/types"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "order": order
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageResourceFulfillmentType>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Update a fulfillment type
     
     - parameter id: (path) The id 
     - parameter fulfillmentType: (body) The fulfillment type (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateFulfillmentTypeUsingPUT(id id: Int32, fulfillmentType: FulfillmentType? = nil, completion: ((error: ErrorType?) -> Void)) {
        updateFulfillmentTypeUsingPUTWithRequestBuilder(id: id, fulfillmentType: fulfillmentType).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a fulfillment type
     - PUT /store/fulfillment/types/{id}
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     
     - parameter id: (path) The id 
     - parameter fulfillmentType: (body) The fulfillment type (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func updateFulfillmentTypeUsingPUTWithRequestBuilder(id id: Int32, fulfillmentType: FulfillmentType? = nil) -> RequestBuilder<Void> {
        var path = "/store/fulfillment/types/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = fulfillmentType?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}