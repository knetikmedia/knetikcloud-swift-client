//
// PaymentsXsollaAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class PaymentsXsollaAPI: APIBase {
    /**
     Create a payment token that should be used to forward the user to Xsolla so they can complete payment
     
     - parameter request: (body) The payment request to be sent to XSolla (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func createXsollaTokenUrl(request request: XsollaPaymentRequest? = nil, completion: ((data: String?, error: ErrorType?) -> Void)) {
        createXsollaTokenUrlWithRequestBuilder(request: request).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create a payment token that should be used to forward the user to Xsolla so they can complete payment
     - POST /payment/provider/xsolla/payment
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example="aeiou"}]
     
     - parameter request: (body) The payment request to be sent to XSolla (optional)

     - returns: RequestBuilder<String> 
     */
    public class func createXsollaTokenUrlWithRequestBuilder(request request: XsollaPaymentRequest? = nil) -> RequestBuilder<String> {
        let path = "/payment/provider/xsolla/payment"
        let URLString = JSAPIAPI.basePath + path
        let parameters = request?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<String>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Receives payment response from Xsolla
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func receiveXsollaNotification(completion: ((error: ErrorType?) -> Void)) {
        receiveXsollaNotificationWithRequestBuilder().execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Receives payment response from Xsolla
     - POST /payment/provider/xsolla/notifications
     - Only used by Xsolla to call back to JSAPI after processing user payment action

     - returns: RequestBuilder<Void> 
     */
    public class func receiveXsollaNotificationWithRequestBuilder() -> RequestBuilder<Void> {
        let path = "/payment/provider/xsolla/notifications"
        let URLString = JSAPIAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}