//
// Reporting_ChallengesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class Reporting_ChallengesAPI: APIBase {
    /**
     Retrieve a challenge event leaderboard details
     
     - parameter filterEvent: (query) A sepecific challenge event id (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getChallengeEventLeaderboard(filterEvent filterEvent: Int64? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: ((data: PageResourceChallengeEventParticipantResource?, error: ErrorType?) -> Void)) {
        getChallengeEventLeaderboardWithRequestBuilder(filterEvent: filterEvent, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Retrieve a challenge event leaderboard details
     - GET /reporting/events/leaderboard
     - Lists all leaderboard entries with additional user details. <br><br><b>Permissions Needed:</b> REPORTING_CHALLENGES_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant
     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "number" : 1,
  "last" : true,
  "size" : 5,
  "total_elements" : 2,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "property",
    "ascending" : true,
    "descending" : true,
    "direction" : "ASC"
  }, {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "property",
    "ascending" : true,
    "descending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 7,
  "number_of_elements" : 5,
  "content" : [ {
    "score" : 0,
    "user_id" : 6,
    "fullname" : "fullname",
    "email" : "email",
    "username" : "username"
  }, {
    "score" : 0,
    "user_id" : 6,
    "fullname" : "fullname",
    "email" : "email",
    "username" : "username"
  } ],
  "first" : true
}}]
     
     - parameter filterEvent: (query) A sepecific challenge event id (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional)

     - returns: RequestBuilder<PageResourceChallengeEventParticipantResource> 
     */
    public class func getChallengeEventLeaderboardWithRequestBuilder(filterEvent filterEvent: Int64? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceChallengeEventParticipantResource> {
        let path = "/reporting/events/leaderboard"
        let URLString = JSAPIAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter_event": filterEvent?.encodeToJSON(),
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "order": order
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageResourceChallengeEventParticipantResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Retrieve a challenge event participant details
     
     - parameter filterEvent: (query) A sepecific challenge event id (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getChallengeEventParticipants(filterEvent filterEvent: Int64? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: ((data: PageResourceChallengeEventParticipantResource?, error: ErrorType?) -> Void)) {
        getChallengeEventParticipantsWithRequestBuilder(filterEvent: filterEvent, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Retrieve a challenge event participant details
     - GET /reporting/events/participants
     - Lists all user submitted scores sorted by value, including those that do not apear in the leaderboard due to value or aggregation. <br><br><b>Permissions Needed:</b> REPORTING_CHALLENGES_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant
     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "number" : 1,
  "last" : true,
  "size" : 5,
  "total_elements" : 2,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "property",
    "ascending" : true,
    "descending" : true,
    "direction" : "ASC"
  }, {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "property",
    "ascending" : true,
    "descending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 7,
  "number_of_elements" : 5,
  "content" : [ {
    "score" : 0,
    "user_id" : 6,
    "fullname" : "fullname",
    "email" : "email",
    "username" : "username"
  }, {
    "score" : 0,
    "user_id" : 6,
    "fullname" : "fullname",
    "email" : "email",
    "username" : "username"
  } ],
  "first" : true
}}]
     
     - parameter filterEvent: (query) A sepecific challenge event id (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional)

     - returns: RequestBuilder<PageResourceChallengeEventParticipantResource> 
     */
    public class func getChallengeEventParticipantsWithRequestBuilder(filterEvent filterEvent: Int64? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceChallengeEventParticipantResource> {
        let path = "/reporting/events/participants"
        let URLString = JSAPIAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter_event": filterEvent?.encodeToJSON(),
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "order": order
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageResourceChallengeEventParticipantResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}