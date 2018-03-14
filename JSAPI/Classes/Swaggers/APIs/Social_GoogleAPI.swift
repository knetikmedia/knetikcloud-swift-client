//
// Social_GoogleAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class Social_GoogleAPI: APIBase {
    /**
     Link google account
     
     - parameter googleToken: (body) The token from google (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func linkAccounts1(googleToken googleToken: GoogleToken? = nil, completion: ((error: ErrorType?) -> Void)) {
        linkAccounts1WithRequestBuilder(googleToken: googleToken).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Link google account
     - POST /social/google/users
     - Links the current user account to a google account, using the acccess token from google. Can also be used to update the access token after it has expired. <br><br><b>Permissions Needed:</b> Non-google user token
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant
     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     
     - parameter googleToken: (body) The token from google (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func linkAccounts1WithRequestBuilder(googleToken googleToken: GoogleToken? = nil) -> RequestBuilder<Void> {
        let path = "/social/google/users"
        let URLString = JSAPIAPI.basePath + path
        let parameters = googleToken?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}