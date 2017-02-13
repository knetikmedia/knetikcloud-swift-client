//
// PaymentsOptimalAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class PaymentsOptimalAPI: APIBase {
    /**
     Initiate silent post with Optimal
     
     - parameter request: (body) The payment request to initiate (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func silentPostOptimal(request request: OptimalPaymentRequest? = nil, completion: ((data: String?, error: ErrorType?) -> Void)) {
        silentPostOptimalWithRequestBuilder(request: request).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Initiate silent post with Optimal
     - POST /payment/provider/optimal/silent
     - Will return the url for a hosted payment endpoint to post to. See Optimal documentation for details.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example="aeiou"}]
     
     - parameter request: (body) The payment request to initiate (optional)

     - returns: RequestBuilder<String> 
     */
    public class func silentPostOptimalWithRequestBuilder(request request: OptimalPaymentRequest? = nil) -> RequestBuilder<String> {
        let path = "/payment/provider/optimal/silent"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = request?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<String>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}