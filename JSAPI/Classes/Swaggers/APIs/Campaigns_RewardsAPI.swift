//
// Campaigns_RewardsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class Campaigns_RewardsAPI: APIBase {
    /**
     Create a reward set
     
     - parameter rewardSetResource: (body) The reward set resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func createRewardSet(rewardSetResource rewardSetResource: RewardSetResource? = nil, completion: ((data: RewardSetResource?, error: ErrorType?) -> Void)) {
        createRewardSetWithRequestBuilder(rewardSetResource: rewardSetResource).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create a reward set
     - POST /rewards
     - <b>Permissions Needed:</b> REWARDS_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant
     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "short_description" : "short_description",
  "unique_key" : "unique_key",
  "currency_rewards" : [ {
    "currency_name" : "currency_name",
    "max_rank" : 9,
    "min_rank" : 3,
    "percent" : false,
    "value" : 2.027123023002322,
    "currency_code" : "currency_code"
  }, {
    "currency_name" : "currency_name",
    "max_rank" : 9,
    "min_rank" : 3,
    "percent" : false,
    "value" : 2.027123023002322,
    "currency_code" : "currency_code"
  } ],
  "name" : "name",
  "created_date" : 7,
  "id" : 4,
  "long_description" : "long_description",
  "max_placing" : 6,
  "updated_date" : 7,
  "item_rewards" : [ {
    "quantity" : 1,
    "item_id" : 7,
    "max_rank" : 1,
    "item_name" : "item_name",
    "min_rank" : 1
  }, {
    "quantity" : 1,
    "item_id" : 7,
    "max_rank" : 1,
    "item_name" : "item_name",
    "min_rank" : 1
  } ]
}}]
     
     - parameter rewardSetResource: (body) The reward set resource object (optional)

     - returns: RequestBuilder<RewardSetResource> 
     */
    public class func createRewardSetWithRequestBuilder(rewardSetResource rewardSetResource: RewardSetResource? = nil) -> RequestBuilder<RewardSetResource> {
        let path = "/rewards"
        let URLString = JSAPIAPI.basePath + path
        let parameters = rewardSetResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<RewardSetResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a reward set
     
     - parameter id: (path) The reward id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteRewardSet(id id: Int32, completion: ((error: ErrorType?) -> Void)) {
        deleteRewardSetWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a reward set
     - DELETE /rewards/{id}
     - <b>Permissions Needed:</b> REWARDS_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant
     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     
     - parameter id: (path) The reward id 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteRewardSetWithRequestBuilder(id id: Int32) -> RequestBuilder<Void> {
        var path = "/rewards/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = JSAPIAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a single reward set
     
     - parameter id: (path) The reward id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getRewardSet(id id: Int32, completion: ((data: RewardSetResource?, error: ErrorType?) -> Void)) {
        getRewardSetWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a single reward set
     - GET /rewards/{id}
     - <b>Permissions Needed:</b> ANY
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant
     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "short_description" : "short_description",
  "unique_key" : "unique_key",
  "currency_rewards" : [ {
    "currency_name" : "currency_name",
    "max_rank" : 9,
    "min_rank" : 3,
    "percent" : false,
    "value" : 2.027123023002322,
    "currency_code" : "currency_code"
  }, {
    "currency_name" : "currency_name",
    "max_rank" : 9,
    "min_rank" : 3,
    "percent" : false,
    "value" : 2.027123023002322,
    "currency_code" : "currency_code"
  } ],
  "name" : "name",
  "created_date" : 7,
  "id" : 4,
  "long_description" : "long_description",
  "max_placing" : 6,
  "updated_date" : 7,
  "item_rewards" : [ {
    "quantity" : 1,
    "item_id" : 7,
    "max_rank" : 1,
    "item_name" : "item_name",
    "min_rank" : 1
  }, {
    "quantity" : 1,
    "item_id" : 7,
    "max_rank" : 1,
    "item_name" : "item_name",
    "min_rank" : 1
  } ]
}}]
     
     - parameter id: (path) The reward id 

     - returns: RequestBuilder<RewardSetResource> 
     */
    public class func getRewardSetWithRequestBuilder(id id: Int32) -> RequestBuilder<RewardSetResource> {
        var path = "/rewards/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = JSAPIAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<RewardSetResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     List and search reward sets
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getRewardSets(size size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: ((data: PageResourceRewardSetResource?, error: ErrorType?) -> Void)) {
        getRewardSetsWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     List and search reward sets
     - GET /rewards
     - <b>Permissions Needed:</b> ANY
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant
     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "number" : 0,
  "last" : true,
  "size" : 1,
  "total_elements" : 5,
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
  "total_pages" : 5,
  "number_of_elements" : 6,
  "content" : [ {
    "short_description" : "short_description",
    "unique_key" : "unique_key",
    "currency_rewards" : [ {
      "currency_name" : "currency_name",
      "max_rank" : 9,
      "min_rank" : 3,
      "percent" : false,
      "value" : 2.027123023002322,
      "currency_code" : "currency_code"
    }, {
      "currency_name" : "currency_name",
      "max_rank" : 9,
      "min_rank" : 3,
      "percent" : false,
      "value" : 2.027123023002322,
      "currency_code" : "currency_code"
    } ],
    "name" : "name",
    "created_date" : 7,
    "id" : 4,
    "long_description" : "long_description",
    "max_placing" : 6,
    "updated_date" : 7,
    "item_rewards" : [ {
      "quantity" : 1,
      "item_id" : 7,
      "max_rank" : 1,
      "item_name" : "item_name",
      "min_rank" : 1
    }, {
      "quantity" : 1,
      "item_id" : 7,
      "max_rank" : 1,
      "item_name" : "item_name",
      "min_rank" : 1
    } ]
  }, {
    "short_description" : "short_description",
    "unique_key" : "unique_key",
    "currency_rewards" : [ {
      "currency_name" : "currency_name",
      "max_rank" : 9,
      "min_rank" : 3,
      "percent" : false,
      "value" : 2.027123023002322,
      "currency_code" : "currency_code"
    }, {
      "currency_name" : "currency_name",
      "max_rank" : 9,
      "min_rank" : 3,
      "percent" : false,
      "value" : 2.027123023002322,
      "currency_code" : "currency_code"
    } ],
    "name" : "name",
    "created_date" : 7,
    "id" : 4,
    "long_description" : "long_description",
    "max_placing" : 6,
    "updated_date" : 7,
    "item_rewards" : [ {
      "quantity" : 1,
      "item_id" : 7,
      "max_rank" : 1,
      "item_name" : "item_name",
      "min_rank" : 1
    }, {
      "quantity" : 1,
      "item_id" : 7,
      "max_rank" : 1,
      "item_name" : "item_name",
      "min_rank" : 1
    } ]
  } ],
  "first" : true
}}]
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<PageResourceRewardSetResource> 
     */
    public class func getRewardSetsWithRequestBuilder(size size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceRewardSetResource> {
        let path = "/rewards"
        let URLString = JSAPIAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "order": order
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageResourceRewardSetResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Update a reward set
     
     - parameter id: (path) The reward id 
     - parameter rewardSetResource: (body) The reward set resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateRewardSet(id id: Int32, rewardSetResource: RewardSetResource? = nil, completion: ((data: RewardSetResource?, error: ErrorType?) -> Void)) {
        updateRewardSetWithRequestBuilder(id: id, rewardSetResource: rewardSetResource).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Update a reward set
     - PUT /rewards/{id}
     - <b>Permissions Needed:</b> REWARDS_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant
     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "short_description" : "short_description",
  "unique_key" : "unique_key",
  "currency_rewards" : [ {
    "currency_name" : "currency_name",
    "max_rank" : 9,
    "min_rank" : 3,
    "percent" : false,
    "value" : 2.027123023002322,
    "currency_code" : "currency_code"
  }, {
    "currency_name" : "currency_name",
    "max_rank" : 9,
    "min_rank" : 3,
    "percent" : false,
    "value" : 2.027123023002322,
    "currency_code" : "currency_code"
  } ],
  "name" : "name",
  "created_date" : 7,
  "id" : 4,
  "long_description" : "long_description",
  "max_placing" : 6,
  "updated_date" : 7,
  "item_rewards" : [ {
    "quantity" : 1,
    "item_id" : 7,
    "max_rank" : 1,
    "item_name" : "item_name",
    "min_rank" : 1
  }, {
    "quantity" : 1,
    "item_id" : 7,
    "max_rank" : 1,
    "item_name" : "item_name",
    "min_rank" : 1
  } ]
}}]
     
     - parameter id: (path) The reward id 
     - parameter rewardSetResource: (body) The reward set resource object (optional)

     - returns: RequestBuilder<RewardSetResource> 
     */
    public class func updateRewardSetWithRequestBuilder(id id: Int32, rewardSetResource: RewardSetResource? = nil) -> RequestBuilder<RewardSetResource> {
        var path = "/rewards/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters = rewardSetResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<RewardSetResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}