//
// AuthClientsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class AuthClientsAPI: APIBase {
    /**
     Create a new client
     
     - parameter clientResource: (body) The client resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func createClient(clientResource clientResource: ClientResource? = nil, completion: ((data: ClientResource?, error: ErrorType?) -> Void)) {
        createClientWithRequestBuilder(clientResource: clientResource).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create a new client
     - POST /auth/clients
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "client_key" : "aeiou",
  "grant_types" : [ "aeiou" ],
  "is_public" : false,
  "name" : "aeiou",
  "id" : 3,
  "redirect_uris" : [ "aeiou" ],
  "secret" : "aeiou",
  "locked" : false,
  "access_token_validity_seconds" : 8,
  "refresh_token_validity_seconds" : 2
}}]
     
     - parameter clientResource: (body) The client resource object (optional)

     - returns: RequestBuilder<ClientResource> 
     */
    public class func createClientWithRequestBuilder(clientResource clientResource: ClientResource? = nil) -> RequestBuilder<ClientResource> {
        let path = "/auth/clients"
        let URLString = JSAPIAPI.basePath + path
        let parameters = clientResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ClientResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a client
     
     - parameter clientKey: (path) The key of the client 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteClient(clientKey clientKey: String, completion: ((error: ErrorType?) -> Void)) {
        deleteClientWithRequestBuilder(clientKey: clientKey).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a client
     - DELETE /auth/clients/{clientKey}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter clientKey: (path) The key of the client 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteClientWithRequestBuilder(clientKey clientKey: String) -> RequestBuilder<Void> {
        var path = "/auth/clients/{clientKey}"
        path = path.stringByReplacingOccurrencesOfString("{client_key}", withString: "\(clientKey)", options: .LiteralSearch, range: nil)
        let URLString = JSAPIAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a single client
     
     - parameter clientKey: (path) The key of the client 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getClient(clientKey clientKey: String, completion: ((data: ClientResource?, error: ErrorType?) -> Void)) {
        getClientWithRequestBuilder(clientKey: clientKey).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a single client
     - GET /auth/clients/{clientKey}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "client_key" : "aeiou",
  "grant_types" : [ "aeiou" ],
  "is_public" : false,
  "name" : "aeiou",
  "id" : 6,
  "redirect_uris" : [ "aeiou" ],
  "secret" : "aeiou",
  "locked" : false,
  "access_token_validity_seconds" : 0,
  "refresh_token_validity_seconds" : 0
}}]
     
     - parameter clientKey: (path) The key of the client 

     - returns: RequestBuilder<ClientResource> 
     */
    public class func getClientWithRequestBuilder(clientKey clientKey: String) -> RequestBuilder<ClientResource> {
        var path = "/auth/clients/{clientKey}"
        path = path.stringByReplacingOccurrencesOfString("{client_key}", withString: "\(clientKey)", options: .LiteralSearch, range: nil)
        let URLString = JSAPIAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ClientResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     List available client grant types
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getClientGrantTypes(completion: ((data: [GrantTypeResource]?, error: ErrorType?) -> Void)) {
        getClientGrantTypesWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     List available client grant types
     - GET /auth/clients/grant-types
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example=[ {
  "name" : "aeiou",
  "description" : "aeiou"
} ]}]

     - returns: RequestBuilder<[GrantTypeResource]> 
     */
    public class func getClientGrantTypesWithRequestBuilder() -> RequestBuilder<[GrantTypeResource]> {
        let path = "/auth/clients/grant-types"
        let URLString = JSAPIAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[GrantTypeResource]>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     List and search clients
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getClients(size size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: ((data: PageResourceClientResource?, error: ErrorType?) -> Void)) {
        getClientsWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     List and search clients
     - GET /auth/clients
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 8,
  "last" : true,
  "size" : 1,
  "total_elements" : 1,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 0,
  "number_of_elements" : 0,
  "content" : [ {
    "client_key" : "aeiou",
    "grant_types" : [ "aeiou" ],
    "is_public" : false,
    "name" : "aeiou",
    "id" : 8,
    "redirect_uris" : [ "aeiou" ],
    "secret" : "aeiou",
    "locked" : false,
    "access_token_validity_seconds" : 1,
    "refresh_token_validity_seconds" : 0
  } ],
  "first" : true
}}]
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<PageResourceClientResource> 
     */
    public class func getClientsWithRequestBuilder(size size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceClientResource> {
        let path = "/auth/clients"
        let URLString = JSAPIAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "order": order
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageResourceClientResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Set grant types for a client
     
     - parameter clientKey: (path) The key of the client 
     - parameter grantList: (body) A list of unique grant types (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func setClientGrantTypes(clientKey clientKey: String, grantList: [String]? = nil, completion: ((error: ErrorType?) -> Void)) {
        setClientGrantTypesWithRequestBuilder(clientKey: clientKey, grantList: grantList).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Set grant types for a client
     - PUT /auth/clients/{clientKey}/grant-types
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter clientKey: (path) The key of the client 
     - parameter grantList: (body) A list of unique grant types (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func setClientGrantTypesWithRequestBuilder(clientKey clientKey: String, grantList: [String]? = nil) -> RequestBuilder<Void> {
        var path = "/auth/clients/{clientKey}/grant-types"
        path = path.stringByReplacingOccurrencesOfString("{client_key}", withString: "\(clientKey)", options: .LiteralSearch, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters = grantList?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Set redirect uris for a client
     
     - parameter clientKey: (path) The key of the client 
     - parameter redirectList: (body) A list of unique redirect uris (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func setClientRedirectUris(clientKey clientKey: String, redirectList: [String]? = nil, completion: ((error: ErrorType?) -> Void)) {
        setClientRedirectUrisWithRequestBuilder(clientKey: clientKey, redirectList: redirectList).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Set redirect uris for a client
     - PUT /auth/clients/{clientKey}/redirect-uris
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter clientKey: (path) The key of the client 
     - parameter redirectList: (body) A list of unique redirect uris (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func setClientRedirectUrisWithRequestBuilder(clientKey clientKey: String, redirectList: [String]? = nil) -> RequestBuilder<Void> {
        var path = "/auth/clients/{clientKey}/redirect-uris"
        path = path.stringByReplacingOccurrencesOfString("{client_key}", withString: "\(clientKey)", options: .LiteralSearch, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters = redirectList?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a client
     
     - parameter clientKey: (path) The key of the client 
     - parameter clientResource: (body) The client resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateClient(clientKey clientKey: String, clientResource: ClientResource? = nil, completion: ((data: ClientResource?, error: ErrorType?) -> Void)) {
        updateClientWithRequestBuilder(clientKey: clientKey, clientResource: clientResource).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Update a client
     - PUT /auth/clients/{clientKey}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "client_key" : "aeiou",
  "grant_types" : [ "aeiou" ],
  "is_public" : false,
  "name" : "aeiou",
  "id" : 5,
  "redirect_uris" : [ "aeiou" ],
  "secret" : "aeiou",
  "locked" : false,
  "access_token_validity_seconds" : 0,
  "refresh_token_validity_seconds" : 1
}}]
     
     - parameter clientKey: (path) The key of the client 
     - parameter clientResource: (body) The client resource object (optional)

     - returns: RequestBuilder<ClientResource> 
     */
    public class func updateClientWithRequestBuilder(clientKey clientKey: String, clientResource: ClientResource? = nil) -> RequestBuilder<ClientResource> {
        var path = "/auth/clients/{clientKey}"
        path = path.stringByReplacingOccurrencesOfString("{client_key}", withString: "\(clientKey)", options: .LiteralSearch, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters = clientResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ClientResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}