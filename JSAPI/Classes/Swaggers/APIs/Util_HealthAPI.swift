//
// Util_HealthAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class Util_HealthAPI: APIBase {
    /**
     Get health info
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getHealth(completion: ((data: AnyObject?, error: ErrorType?) -> Void)) {
        getHealthWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get health info
     - GET /health
     - <b>Permissions Needed:</b> ANY
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant
     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example="{}"}]

     - returns: RequestBuilder<AnyObject> 
     */
    public class func getHealthWithRequestBuilder() -> RequestBuilder<AnyObject> {
        let path = "/health"
        let URLString = JSAPIAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<AnyObject>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
