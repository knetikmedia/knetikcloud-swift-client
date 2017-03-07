//
// ReportingChallengesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class ReportingChallengesAPI: APIBase {
    /**
     Retrieve a challenge event leaderboard details
     
     - parameter filterEvent: (query) A sepecific challenge event id (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getChallengeEventLeaderboard(filterEvent filterEvent: Int64? = nil, completion: ((data: PageResourceChallengeEventParticipantResource?, error: ErrorType?) -> Void)) {
        getChallengeEventLeaderboardWithRequestBuilder(filterEvent: filterEvent).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Retrieve a challenge event leaderboard details
     - GET /reporting/events/leaderboard
     - Lists all leaderboard entries with additional user details
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 3,
  "last" : true,
  "size" : 2,
  "total_elements" : 0,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 3,
  "number_of_elements" : 0,
  "content" : [ {
    "score" : 5,
    "user_id" : 0,
    "fullname" : "aeiou",
    "email" : "aeiou",
    "username" : "aeiou"
  } ],
  "first" : true
}}]
     
     - parameter filterEvent: (query) A sepecific challenge event id (optional)

     - returns: RequestBuilder<PageResourceChallengeEventParticipantResource> 
     */
    public class func getChallengeEventLeaderboardWithRequestBuilder(filterEvent filterEvent: Int64? = nil) -> RequestBuilder<PageResourceChallengeEventParticipantResource> {
        let path = "/reporting/events/leaderboard"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter_event": filterEvent?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageResourceChallengeEventParticipantResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Retrieve a challenge event participant details
     
     - parameter filterEvent: (query) A sepecific challenge event id (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getChallengeEventParticipants(filterEvent filterEvent: Int64? = nil, completion: ((data: PageResourceChallengeEventParticipantResource?, error: ErrorType?) -> Void)) {
        getChallengeEventParticipantsWithRequestBuilder(filterEvent: filterEvent).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Retrieve a challenge event participant details
     - GET /reporting/events/participants
     - Lists all user submitted scores sorted by value, including those that do not apear in the leaderboard due to value or aggregation
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "number" : 8,
  "last" : true,
  "size" : 5,
  "total_elements" : 2,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "aeiou",
    "ascending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 2,
  "number_of_elements" : 3,
  "content" : [ {
    "score" : 1,
    "user_id" : 7,
    "fullname" : "aeiou",
    "email" : "aeiou",
    "username" : "aeiou"
  } ],
  "first" : true
}}]
     
     - parameter filterEvent: (query) A sepecific challenge event id (optional)

     - returns: RequestBuilder<PageResourceChallengeEventParticipantResource> 
     */
    public class func getChallengeEventParticipantsWithRequestBuilder(filterEvent filterEvent: Int64? = nil) -> RequestBuilder<PageResourceChallengeEventParticipantResource> {
        let path = "/reporting/events/participants"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter_event": filterEvent?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageResourceChallengeEventParticipantResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

}