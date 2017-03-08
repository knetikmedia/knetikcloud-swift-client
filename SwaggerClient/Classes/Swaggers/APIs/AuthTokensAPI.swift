//
// AuthTokensAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class AuthTokensAPI: APIBase {
    /**
     Delete a token by username and client id
     
     - parameter username: (path) The username of the user 
     - parameter clientId: (path) The id of the client 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteToken(username username: String, clientId: String, completion: ((error: ErrorType?) -> Void)) {
        deleteTokenWithRequestBuilder(username: username, clientId: clientId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a token by username and client id
     - DELETE /auth/tokens/{username}/{clientId}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter username: (path) The username of the user 
     - parameter clientId: (path) The id of the client 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteTokenWithRequestBuilder(username username: String, clientId: String) -> RequestBuilder<Void> {
        var path = "/auth/tokens/{username}/{clientId}"
        path = path.stringByReplacingOccurrencesOfString("{username}", withString: "\(username)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{client_id}", withString: "\(clientId)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete all tokens by username
     
     - parameter username: (path) The username of the user 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteTokens(username username: String, completion: ((error: ErrorType?) -> Void)) {
        deleteTokensWithRequestBuilder(username: username).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete all tokens by username
     - DELETE /auth/tokens/{username}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter username: (path) The username of the user 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteTokensWithRequestBuilder(username username: String) -> RequestBuilder<Void> {
        var path = "/auth/tokens/{username}"
        path = path.stringByReplacingOccurrencesOfString("{username}", withString: "\(username)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a single token by username and client id
     
     - parameter username: (path) The username of the user 
     - parameter clientId: (path) The id of the client 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getToken(username username: String, clientId: String, completion: ((data: OauthAccessTokenResource?, error: ErrorType?) -> Void)) {
        getTokenWithRequestBuilder(username: username, clientId: clientId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a single token by username and client id
     - GET /auth/tokens/{username}/{clientId}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "client_id" : "aeiou",
  "token" : "aeiou",
  "username" : "aeiou"
}}]
     
     - parameter username: (path) The username of the user 
     - parameter clientId: (path) The id of the client 

     - returns: RequestBuilder<OauthAccessTokenResource> 
     */
    public class func getTokenWithRequestBuilder(username username: String, clientId: String) -> RequestBuilder<OauthAccessTokenResource> {
        var path = "/auth/tokens/{username}/{clientId}"
        path = path.stringByReplacingOccurrencesOfString("{username}", withString: "\(username)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{client_id}", withString: "\(clientId)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<OauthAccessTokenResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     List usernames and client ids
     
     - parameter filterClientId: (query) Filters for token whose client id matches provided string (optional)
     - parameter filterUsername: (query) Filters for token whose username matches provided string (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to username:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getTokens(filterClientId filterClientId: String? = nil, filterUsername: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: ((data: PageResourceOauthAccessTokenResource?, error: ErrorType?) -> Void)) {
        getTokensWithRequestBuilder(filterClientId: filterClientId, filterUsername: filterUsername, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     List usernames and client ids
     - GET /auth/tokens
     - Token value not shown
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 2,
  "last" : true,
  "size" : 0,
  "total_elements" : 4,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 8,
  "number_of_elements" : 4,
  "content" : [ {
    "client_id" : "aeiou",
    "token" : "aeiou",
    "username" : "aeiou"
  } ],
  "first" : true
}}]
     
     - parameter filterClientId: (query) Filters for token whose client id matches provided string (optional)
     - parameter filterUsername: (query) Filters for token whose username matches provided string (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to username:ASC)

     - returns: RequestBuilder<PageResourceOauthAccessTokenResource> 
     */
    public class func getTokensWithRequestBuilder(filterClientId filterClientId: String? = nil, filterUsername: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceOauthAccessTokenResource> {
        let path = "/auth/tokens"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter_client_id": filterClientId,
            "filter_username": filterUsername,
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "order": order
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageResourceOauthAccessTokenResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}