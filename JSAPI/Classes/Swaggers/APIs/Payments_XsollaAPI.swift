//
// Payments_XsollaAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class Payments_XsollaAPI: APIBase {
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
     - <b>Permissions Needed:</b> XSOLLA_ADMIN or owner
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant
     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example=""}]
     
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

}