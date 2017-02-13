//
// CampaignsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class CampaignsAPI: APIBase {
    /**
     Add a challenge to a campaign
     
     - parameter id: (path) The id of the campaign 
     - parameter challengeId: (body) The id of the challenge (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func addChallengeToCampaign(id id: Int64, challengeId: Int64? = nil, completion: ((error: ErrorType?) -> Void)) {
        addChallengeToCampaignWithRequestBuilder(id: id, challengeId: challengeId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Add a challenge to a campaign
     - POST /campaigns/{id}/challenges
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the campaign 
     - parameter challengeId: (body) The id of the challenge (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func addChallengeToCampaignWithRequestBuilder(id id: Int64, challengeId: Int64? = nil) -> RequestBuilder<Void> {
        var path = "/campaigns/{id}/challenges"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = challengeId?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Create a campaign
     
     - parameter campaignResource: (body) The campaign resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func createCampaign(campaignResource campaignResource: CampaignResource? = nil, completion: ((data: CampaignResource?, error: ErrorType?) -> Void)) {
        createCampaignWithRequestBuilder(campaignResource: campaignResource).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create a campaign
     - POST /campaigns
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "template" : "aeiou",
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
  "short_description" : "aeiou",
  "next_challenge_date" : 123456789,
  "active" : false,
  "long_description" : "aeiou",
  "leaderboard_strategy" : "aeiou",
  "next_challenge" : "aeiou",
  "name" : "aeiou",
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  },
  "created_date" : 123456789,
  "id" : 123456789,
  "updated_date" : 123456789,
  "reward_status" : "aeiou"
}}]
     
     - parameter campaignResource: (body) The campaign resource object (optional)

     - returns: RequestBuilder<CampaignResource> 
     */
    public class func createCampaignWithRequestBuilder(campaignResource campaignResource: CampaignResource? = nil) -> RequestBuilder<CampaignResource> {
        let path = "/campaigns"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = campaignResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<CampaignResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Create a campaign template
     
     - parameter campaignTemplateResource: (body) The campaign template resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func createCampaignTemplate(campaignTemplateResource campaignTemplateResource: TemplateResource? = nil, completion: ((data: TemplateResource?, error: ErrorType?) -> Void)) {
        createCampaignTemplateWithRequestBuilder(campaignTemplateResource: campaignTemplateResource).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create a campaign template
     - POST /campaigns/templates
     - Campaign Templates define a type of campaign and the properties they have
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "name" : "aeiou",
  "created_date" : 123456789,
  "id" : "aeiou",
  "updated_date" : 123456789,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "required" : false
  } ]
}}]
     
     - parameter campaignTemplateResource: (body) The campaign template resource object (optional)

     - returns: RequestBuilder<TemplateResource> 
     */
    public class func createCampaignTemplateWithRequestBuilder(campaignTemplateResource campaignTemplateResource: TemplateResource? = nil) -> RequestBuilder<TemplateResource> {
        let path = "/campaigns/templates"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = campaignTemplateResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<TemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a campaign
     
     - parameter id: (path) The campaign id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteCampaign(id id: Int64, completion: ((error: ErrorType?) -> Void)) {
        deleteCampaignWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a campaign
     - DELETE /campaigns/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The campaign id 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteCampaignWithRequestBuilder(id id: Int64) -> RequestBuilder<Void> {
        var path = "/campaigns/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a campaign template
     
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) The value needed to delete used templates (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteCampaignTemplate(id id: String, cascade: String? = nil, completion: ((error: ErrorType?) -> Void)) {
        deleteCampaignTemplateWithRequestBuilder(id: id, cascade: cascade).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a campaign template
     - DELETE /campaigns/templates/{id}
     - If cascade = 'detach', it will force delete the template even if it's attached to other objects
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) The value needed to delete used templates (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func deleteCampaignTemplateWithRequestBuilder(id id: String, cascade: String? = nil) -> RequestBuilder<Void> {
        var path = "/campaigns/templates/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "cascade": cascade
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Returns a single campaign
     
     - parameter id: (path) The campaign id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getCampaign(id id: Int64, completion: ((data: CampaignResource?, error: ErrorType?) -> Void)) {
        getCampaignWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Returns a single campaign
     - GET /campaigns/{id}
     - examples: [{contentType=application/json, example={
  "template" : "aeiou",
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
  "short_description" : "aeiou",
  "next_challenge_date" : 123456789,
  "active" : false,
  "long_description" : "aeiou",
  "leaderboard_strategy" : "aeiou",
  "next_challenge" : "aeiou",
  "name" : "aeiou",
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  },
  "created_date" : 123456789,
  "id" : 123456789,
  "updated_date" : 123456789,
  "reward_status" : "aeiou"
}}]
     
     - parameter id: (path) The campaign id 

     - returns: RequestBuilder<CampaignResource> 
     */
    public class func getCampaignWithRequestBuilder(id id: Int64) -> RequestBuilder<CampaignResource> {
        var path = "/campaigns/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<CampaignResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     List the challenges associated with a campaign
     
     - parameter id: (path) The campaign id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getCampaignChallenges(id id: Int64, completion: ((data: PageResourceChallengeResource?, error: ErrorType?) -> Void)) {
        getCampaignChallengesWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     List the challenges associated with a campaign
     - GET /campaigns/{id}/challenges
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
    "end_date" : 123456789,
    "template" : "aeiou",
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
    "short_description" : "aeiou",
    "next_event_date" : 123456789,
    "long_description" : "aeiou",
    "reward_lag_minutes" : 123,
    "leaderboard_strategy" : "aeiou",
    "schedule" : {
      "duration" : 123,
      "repeat" : "aeiou",
      "duration_unit" : "aeiou"
    },
    "copy_of" : 123456789,
    "activities" : 123,
    "name" : "aeiou",
    "additional_properties" : {
      "key" : {
        "type" : "aeiou"
      }
    },
    "created_date" : 123456789,
    "id" : 123456789,
    "updated_date" : 123456789,
    "campaign_id" : 123456789,
    "start_date" : 123456789
  } ],
  "first" : true
}}]
     
     - parameter id: (path) The campaign id 

     - returns: RequestBuilder<PageResourceChallengeResource> 
     */
    public class func getCampaignChallengesWithRequestBuilder(id id: Int64) -> RequestBuilder<PageResourceChallengeResource> {
        var path = "/campaigns/{id}/challenges"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageResourceChallengeResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get a single campaign template
     
     - parameter id: (path) The id of the template 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getCampaignTemplate(id id: String, completion: ((data: TemplateResource?, error: ErrorType?) -> Void)) {
        getCampaignTemplateWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a single campaign template
     - GET /campaigns/templates/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "name" : "aeiou",
  "created_date" : 123456789,
  "id" : "aeiou",
  "updated_date" : 123456789,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "required" : false
  } ]
}}]
     
     - parameter id: (path) The id of the template 

     - returns: RequestBuilder<TemplateResource> 
     */
    public class func getCampaignTemplateWithRequestBuilder(id id: String) -> RequestBuilder<TemplateResource> {
        var path = "/campaigns/templates/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<TemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     List and search campaign templates
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getCampaignTemplates(size size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: ((data: PageResourceTemplateResource?, error: ErrorType?) -> Void)) {
        getCampaignTemplatesWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     List and search campaign templates
     - GET /campaigns/templates
     - OAuth:
       - type: oauth2
       - name: OAuth2
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
    "name" : "aeiou",
    "created_date" : 123456789,
    "id" : "aeiou",
    "updated_date" : 123456789,
    "properties" : [ {
      "name" : "aeiou",
      "type" : "aeiou",
      "required" : false
    } ]
  } ],
  "first" : true
}}]
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<PageResourceTemplateResource> 
     */
    public class func getCampaignTemplatesWithRequestBuilder(size size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceTemplateResource> {
        let path = "/campaigns/templates"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "order": order
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageResourceTemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     List and search campaigns
     
     - parameter filterActive: (query) Filter for campaigns that are active (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getCampaigns(filterActive filterActive: Bool? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: ((data: PageResourceCampaignResource?, error: ErrorType?) -> Void)) {
        getCampaignsWithRequestBuilder(filterActive: filterActive, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     List and search campaigns
     - GET /campaigns
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
    "template" : "aeiou",
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
    "short_description" : "aeiou",
    "next_challenge_date" : 123456789,
    "active" : false,
    "long_description" : "aeiou",
    "leaderboard_strategy" : "aeiou",
    "next_challenge" : "aeiou",
    "name" : "aeiou",
    "additional_properties" : {
      "key" : {
        "type" : "aeiou"
      }
    },
    "created_date" : 123456789,
    "id" : 123456789,
    "updated_date" : 123456789,
    "reward_status" : "aeiou"
  } ],
  "first" : true
}}]
     
     - parameter filterActive: (query) Filter for campaigns that are active (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<PageResourceCampaignResource> 
     */
    public class func getCampaignsWithRequestBuilder(filterActive filterActive: Bool? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceCampaignResource> {
        let path = "/campaigns"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter_active": filterActive,
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "order": order
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageResourceCampaignResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Remove a challenge from a campaign
     
     - parameter campaignId: (path) The campaign id 
     - parameter id: (path) The challenge id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func removeChallengeFromCampaign(campaignId campaignId: Int64, id: Int64, completion: ((error: ErrorType?) -> Void)) {
        removeChallengeFromCampaignWithRequestBuilder(campaignId: campaignId, id: id).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Remove a challenge from a campaign
     - DELETE /campaigns/{campaignId}/challenges/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter campaignId: (path) The campaign id 
     - parameter id: (path) The challenge id 

     - returns: RequestBuilder<Void> 
     */
    public class func removeChallengeFromCampaignWithRequestBuilder(campaignId campaignId: Int64, id: Int64) -> RequestBuilder<Void> {
        var path = "/campaigns/{campaignId}/challenges/{id}"
        path = path.stringByReplacingOccurrencesOfString("{campaign_id}", withString: "\(campaignId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a campaign
     
     - parameter id: (path) The campaign id 
     - parameter campaignResource: (body) The campaign resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateCampaign(id id: Int64, campaignResource: CampaignResource? = nil, completion: ((error: ErrorType?) -> Void)) {
        updateCampaignWithRequestBuilder(id: id, campaignResource: campaignResource).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a campaign
     - PUT /campaigns/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The campaign id 
     - parameter campaignResource: (body) The campaign resource object (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func updateCampaignWithRequestBuilder(id id: Int64, campaignResource: CampaignResource? = nil) -> RequestBuilder<Void> {
        var path = "/campaigns/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = campaignResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update an campaign template
     
     - parameter id: (path) The id of the template 
     - parameter campaignTemplateResource: (body) The campaign template resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateCampaignTemplate(id id: String, campaignTemplateResource: TemplateResource? = nil, completion: ((error: ErrorType?) -> Void)) {
        updateCampaignTemplateWithRequestBuilder(id: id, campaignTemplateResource: campaignTemplateResource).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update an campaign template
     - PUT /campaigns/templates/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the template 
     - parameter campaignTemplateResource: (body) The campaign template resource object (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func updateCampaignTemplateWithRequestBuilder(id id: String, campaignTemplateResource: TemplateResource? = nil) -> RequestBuilder<Void> {
        var path = "/campaigns/templates/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = campaignTemplateResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}