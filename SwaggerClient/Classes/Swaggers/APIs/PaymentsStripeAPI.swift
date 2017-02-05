//
// PaymentsStripeAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class PaymentsStripeAPI: APIBase {
    /**
     Create a Stripe payment method for a user
     
     - parameter request: (body) The request to create a Stripe customer with payment info (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func createCustomerUsingPOST(request request: StripeCreatePaymentMethod? = nil, completion: ((data: PaymentMethodResource?, error: ErrorType?) -> Void)) {
        createCustomerUsingPOSTWithRequestBuilder(request: request).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create a Stripe payment method for a user
     - POST /payment/provider/stripe/payment-methods
     - Stores customer information and creates a payment method that can be used to pay invoices through the payments endpoints.
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     - examples: [{contentType=application/json, example={
  "payment_method_type" : {
    "name" : "aeiou",
    "id" : 123
  },
  "last4" : "aeiou",
  "short_description" : "aeiou",
  "unique_key" : "aeiou",
  "verified" : true,
  "long_description" : "aeiou",
  "sort" : 123,
  "expiration_date" : 123456789,
  "token" : "aeiou",
  "expiration_year" : 123,
  "default" : true,
  "payment_type" : "aeiou",
  "user_id" : 123,
  "expiration_month" : 123,
  "name" : "aeiou",
  "disabled" : false,
  "created_date" : 123456789,
  "id" : 123456789,
  "updated_date" : 123456789
}}]
     
     - parameter request: (body) The request to create a Stripe customer with payment info (optional)

     - returns: RequestBuilder<PaymentMethodResource> 
     */
    public class func createCustomerUsingPOSTWithRequestBuilder(request request: StripeCreatePaymentMethod? = nil) -> RequestBuilder<PaymentMethodResource> {
        let path = "/payment/provider/stripe/payment-methods"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = request?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PaymentMethodResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Pay with a single use token
     
     - parameter request: (body) The request to pay an invoice (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func payInvoiceUsingPOST1(request request: StripePaymentRequest? = nil, completion: ((error: ErrorType?) -> Void)) {
        payInvoiceUsingPOST1WithRequestBuilder(request: request).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Pay with a single use token
     - POST /payment/provider/stripe/payments
     
     - parameter request: (body) The request to pay an invoice (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func payInvoiceUsingPOST1WithRequestBuilder(request request: StripePaymentRequest? = nil) -> RequestBuilder<Void> {
        let path = "/payment/provider/stripe/payments"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = request?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}