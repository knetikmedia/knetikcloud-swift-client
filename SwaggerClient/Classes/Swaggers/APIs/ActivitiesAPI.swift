//
// ActivitiesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class ActivitiesAPI: APIBase {
    /**
     Create an activity
     
     - parameter activityResource: (body) The activity resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func createActivity(activityResource activityResource: ActivityResource? = nil, completion: ((data: ActivityResource?, error: ErrorType?) -> Void)) {
        createActivityWithRequestBuilder(activityResource: activityResource).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create an activity
     - POST /activities
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "entitlements" : [ {
    "item_id" : 123,
    "price" : 1.3579000000000001069366817318950779736042022705078125,
    "name" : "aeiou",
    "sku" : "aeiou",
    "currency_code" : "aeiou"
  } ],
  "template" : false,
  "reward_set" : {
    "short_description" : "aeiou",
    "unique_key" : "aeiou",
    "currency_rewards" : [ {
      "currency_name" : "aeiou",
      "max_rank" : 123,
      "min_rank" : 123,
      "percent" : false,
      "value" : 1.3579000000000001069366817318950779736042022705078125,
      "currency_code" : "aeiou"
    } ],
    "name" : "aeiou",
    "created_date" : 123456789,
    "id" : 123,
    "long_description" : "aeiou",
    "max_placing" : 123,
    "updated_date" : 123456789,
    "item_rewards" : [ {
      "quantity" : 123,
      "item_id" : 123,
      "max_rank" : 123,
      "item_name" : "aeiou",
      "min_rank" : 123
    } ]
  },
  "settings" : [ {
    "advanced_option" : false,
    "name" : "aeiou",
    "options" : [ {
      "name" : "aeiou",
      "value" : "aeiou"
    } ],
    "description" : "aeiou",
    "default_value" : "aeiou",
    "key" : "aeiou"
  } ],
  "short_description" : "aeiou",
  "unique_key" : "aeiou",
  "launch" : "aeiou",
  "long_description" : "aeiou",
  "type" : "aeiou",
  "name" : "aeiou",
  "created_date" : 123456789,
  "id" : 123456789,
  "updated_date" : 123456789
}}]
     
     - parameter activityResource: (body) The activity resource object (optional)

     - returns: RequestBuilder<ActivityResource> 
     */
    public class func createActivityWithRequestBuilder(activityResource activityResource: ActivityResource? = nil) -> RequestBuilder<ActivityResource> {
        let path = "/activities"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = activityResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ActivityResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Create a new activity occurrence
     
     - parameter test: (query) if true, indicates that the occurrence should NOT be created. This can be used to test for eligibility and valid settings (optional, default to false)
     - parameter activityOccurrenceResource: (body) The activity occurrence object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func createActivityOccurrence(test test: Bool? = nil, activityOccurrenceResource: ActivityOccurrenceResource? = nil, completion: ((data: ActivityOccurrenceResource?, error: ErrorType?) -> Void)) {
        createActivityOccurrenceWithRequestBuilder(test: test, activityOccurrenceResource: activityOccurrenceResource).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create a new activity occurrence
     - POST /activity-occurrences
     - Has to enforce extra rules if not used as an admin
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "settings" : [ {
    "key_name" : "aeiou",
    "value" : "aeiou",
    "key" : "aeiou",
    "value_name" : "aeiou"
  } ],
  "challenge_activity_id" : 123456789,
  "simulated" : false,
  "entitlement" : {
    "item_id" : 123,
    "price" : 1.3579000000000001069366817318950779736042022705078125,
    "name" : "aeiou",
    "sku" : "aeiou",
    "currency_code" : "aeiou"
  },
  "users" : [ {
    "joined_date" : 123456789,
    "metric" : {
      "value" : 123456789,
      "activity_occurence_id" : 123456789,
      "tags" : [ "aeiou" ]
    },
    "host" : false,
    "left_date" : 123456789,
    "id" : 123456789,
    "user" : {
      "avatar_url" : "aeiou",
      "id" : 123,
      "display_name" : "aeiou",
      "username" : "aeiou"
    },
    "status" : "aeiou"
  } ],
  "event_id" : 123456789,
  "activity_id" : 123456789,
  "created_date" : 123456789,
  "id" : 123456789,
  "updated_date" : 123456789,
  "reward_status" : "aeiou",
  "start_date" : 123456789,
  "status" : "aeiou"
}}]
     
     - parameter test: (query) if true, indicates that the occurrence should NOT be created. This can be used to test for eligibility and valid settings (optional, default to false)
     - parameter activityOccurrenceResource: (body) The activity occurrence object (optional)

     - returns: RequestBuilder<ActivityOccurrenceResource> 
     */
    public class func createActivityOccurrenceWithRequestBuilder(test test: Bool? = nil, activityOccurrenceResource: ActivityOccurrenceResource? = nil) -> RequestBuilder<ActivityOccurrenceResource> {
        let path = "/activity-occurrences"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = activityOccurrenceResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ActivityOccurrenceResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Delete an activity
     
     - parameter id: (path) The id of the activity 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteActivity(id id: Int64, completion: ((error: ErrorType?) -> Void)) {
        deleteActivityWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete an activity
     - DELETE /activities/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the activity 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteActivityWithRequestBuilder(id id: Int64) -> RequestBuilder<Void> {
        var path = "/activities/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     List activity definitions
     
     - parameter filterTemplate: (query) Filter for activities that are templates, or specifically not if false (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getActivities(filterTemplate filterTemplate: Bool? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: ((data: PageResourceBareActivityResource?, error: ErrorType?) -> Void)) {
        getActivitiesWithRequestBuilder(filterTemplate: filterTemplate, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     List activity definitions
     - GET /activities
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
    "template" : false,
    "short_description" : "aeiou",
    "unique_key" : "aeiou",
    "name" : "aeiou",
    "launch" : "aeiou",
    "created_date" : 123456789,
    "id" : 123456789,
    "long_description" : "aeiou",
    "updated_date" : 123456789,
    "type" : "aeiou"
  } ],
  "first" : true
}}]
     
     - parameter filterTemplate: (query) Filter for activities that are templates, or specifically not if false (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<PageResourceBareActivityResource> 
     */
    public class func getActivitiesWithRequestBuilder(filterTemplate filterTemplate: Bool? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceBareActivityResource> {
        let path = "/activities"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter_template": filterTemplate,
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "order": order
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageResourceBareActivityResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a single activity
     
     - parameter id: (path) The id of the activity 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getActivity(id id: Int64, completion: ((data: ActivityResource?, error: ErrorType?) -> Void)) {
        getActivityWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a single activity
     - GET /activities/{id}
     - examples: [{contentType=application/json, example={
  "entitlements" : [ {
    "item_id" : 123,
    "price" : 1.3579000000000001069366817318950779736042022705078125,
    "name" : "aeiou",
    "sku" : "aeiou",
    "currency_code" : "aeiou"
  } ],
  "template" : false,
  "reward_set" : {
    "short_description" : "aeiou",
    "unique_key" : "aeiou",
    "currency_rewards" : [ {
      "currency_name" : "aeiou",
      "max_rank" : 123,
      "min_rank" : 123,
      "percent" : false,
      "value" : 1.3579000000000001069366817318950779736042022705078125,
      "currency_code" : "aeiou"
    } ],
    "name" : "aeiou",
    "created_date" : 123456789,
    "id" : 123,
    "long_description" : "aeiou",
    "max_placing" : 123,
    "updated_date" : 123456789,
    "item_rewards" : [ {
      "quantity" : 123,
      "item_id" : 123,
      "max_rank" : 123,
      "item_name" : "aeiou",
      "min_rank" : 123
    } ]
  },
  "settings" : [ {
    "advanced_option" : false,
    "name" : "aeiou",
    "options" : [ {
      "name" : "aeiou",
      "value" : "aeiou"
    } ],
    "description" : "aeiou",
    "default_value" : "aeiou",
    "key" : "aeiou"
  } ],
  "short_description" : "aeiou",
  "unique_key" : "aeiou",
  "launch" : "aeiou",
  "long_description" : "aeiou",
  "type" : "aeiou",
  "name" : "aeiou",
  "created_date" : 123456789,
  "id" : 123456789,
  "updated_date" : 123456789
}}]
     
     - parameter id: (path) The id of the activity 

     - returns: RequestBuilder<ActivityResource> 
     */
    public class func getActivityWithRequestBuilder(id id: Int64) -> RequestBuilder<ActivityResource> {
        var path = "/activities/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ActivityResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Sets the status of an activity occurrence to FINISHED and logs metrics
     
     - parameter activityOccurrenceId: (path) The id of the activity occurrence 
     - parameter activityOccurrenceResults: (body) The activity occurrence object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func setActivityOccurrenceResults(activityOccurrenceId activityOccurrenceId: Int64, activityOccurrenceResults: ActivityOccurrenceResults? = nil, completion: ((data: ActivityOccurrenceResults?, error: ErrorType?) -> Void)) {
        setActivityOccurrenceResultsWithRequestBuilder(activityOccurrenceId: activityOccurrenceId, activityOccurrenceResults: activityOccurrenceResults).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Sets the status of an activity occurrence to FINISHED and logs metrics
     - POST /activity-occurrences/{activityOccurrenceId}/results
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "users" : [ {
    "score" : 123456789,
    "ties" : 123,
    "currency_rewards" : [ {
      "currency_name" : "aeiou",
      "max_rank" : 123,
      "min_rank" : 123,
      "percent" : false,
      "value" : 1.3579000000000001069366817318950779736042022705078125,
      "currency_code" : "aeiou"
    } ],
    "rank" : 123456789,
    "item_rewards" : [ {
      "quantity" : 123,
      "item_id" : 123,
      "max_rank" : 123,
      "item_name" : "aeiou",
      "min_rank" : 123
    } ],
    "user" : {
      "avatar_url" : "aeiou",
      "id" : 123,
      "display_name" : "aeiou",
      "username" : "aeiou"
    },
    "tags" : [ "aeiou" ]
  } ]
}}]
     
     - parameter activityOccurrenceId: (path) The id of the activity occurrence 
     - parameter activityOccurrenceResults: (body) The activity occurrence object (optional)

     - returns: RequestBuilder<ActivityOccurrenceResults> 
     */
    public class func setActivityOccurrenceResultsWithRequestBuilder(activityOccurrenceId activityOccurrenceId: Int64, activityOccurrenceResults: ActivityOccurrenceResults? = nil) -> RequestBuilder<ActivityOccurrenceResults> {
        var path = "/activity-occurrences/{activityOccurrenceId}/results"
        path = path.stringByReplacingOccurrencesOfString("{activity_occurrence_id}", withString: "\(activityOccurrenceId)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = activityOccurrenceResults?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<ActivityOccurrenceResults>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update an activity
     
     - parameter id: (path) The id of the activity 
     - parameter activityResource: (body) The activity resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateActivity(id id: Int64, activityResource: ActivityResource? = nil, completion: ((error: ErrorType?) -> Void)) {
        updateActivityWithRequestBuilder(id: id, activityResource: activityResource).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update an activity
     - PUT /activities/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the activity 
     - parameter activityResource: (body) The activity resource object (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func updateActivityWithRequestBuilder(id id: Int64, activityResource: ActivityResource? = nil) -> RequestBuilder<Void> {
        var path = "/activities/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = activityResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Updated the status of an activity occurrence
     
     - parameter activityOccurrenceId: (path) The id of the activity occurrence 
     - parameter activityCccurrenceStatus: (body) The activity occurrence status object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateActivityOccurrence(activityOccurrenceId activityOccurrenceId: Int64, activityCccurrenceStatus: String? = nil, completion: ((error: ErrorType?) -> Void)) {
        updateActivityOccurrenceWithRequestBuilder(activityOccurrenceId: activityOccurrenceId, activityCccurrenceStatus: activityCccurrenceStatus).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Updated the status of an activity occurrence
     - PUT /activity-occurrences/{activityOccurrenceId}/status
     - If setting to 'FINISHED' you must POST to /results instead to record the metrics and get synchronous reward results
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter activityOccurrenceId: (path) The id of the activity occurrence 
     - parameter activityCccurrenceStatus: (body) The activity occurrence status object (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func updateActivityOccurrenceWithRequestBuilder(activityOccurrenceId activityOccurrenceId: Int64, activityCccurrenceStatus: String? = nil) -> RequestBuilder<Void> {
        var path = "/activity-occurrences/{activityOccurrenceId}/status"
        path = path.stringByReplacingOccurrencesOfString("{activity_occurrence_id}", withString: "\(activityOccurrenceId)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = activityCccurrenceStatus?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}