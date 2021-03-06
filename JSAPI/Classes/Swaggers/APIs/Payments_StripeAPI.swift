//
// Payments_StripeAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class Payments_StripeAPI: APIBase {
    /**
     Create a Stripe payment method for a user
     
     - parameter request: (body) The request to create a Stripe customer with payment info (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func createStripePaymentMethod(request request: StripeCreatePaymentMethod? = nil, completion: ((data: PaymentMethodResource?, error: ErrorType?) -> Void)) {
        createStripePaymentMethodWithRequestBuilder(request: request).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create a Stripe payment method for a user
     - POST /payment/provider/stripe/payment-methods
     - Obtain a token from Stripe, following their examples and documentation. Stores customer information and creates a payment method that can be used to pay invoices through the payments endpoints. Ensure that Stripe itself has been configured with the webhook so that invoices are marked paid. <br><br><b>Permissions Needed:</b> STRIPE_ADMIN or owner
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant
     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "payment_method_type" : {
    "supports_refunds" : false,
    "supports_rebill" : false,
    "invoice_processing_hours" : 7,
    "supports_capture" : false,
    "name" : "name",
    "id" : 2,
    "supports_partial" : false
  },
  "last4" : "last4",
  "unique_key" : "unique_key",
  "verified" : true,
  "sort" : 9,
  "expiration_date" : 6,
  "token" : "token",
  "expiration_year" : 5,
  "default" : true,
  "payment_type" : "card",
  "user_id" : 2,
  "expiration_month" : 1,
  "name" : "name",
  "disabled" : false,
  "created_date" : 0,
  "id" : 5,
  "updated_date" : 3
}}]
     
     - parameter request: (body) The request to create a Stripe customer with payment info (optional)

     - returns: RequestBuilder<PaymentMethodResource> 
     */
    public class func createStripePaymentMethodWithRequestBuilder(request request: StripeCreatePaymentMethod? = nil) -> RequestBuilder<PaymentMethodResource> {
        let path = "/payment/provider/stripe/payment-methods"
        let URLString = JSAPIAPI.basePath + path
        let parameters = request?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PaymentMethodResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Pay with a single use token
     
     - parameter request: (body) The request to pay an invoice (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func payStripeInvoice(request request: StripePaymentRequest? = nil, completion: ((error: ErrorType?) -> Void)) {
        payStripeInvoiceWithRequestBuilder(request: request).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Pay with a single use token
     - POST /payment/provider/stripe/payments
     - Obtain a token from Stripe, following their examples and documentation. Pays an invoice without creating a payment method. Ensure that Stripe itself has been configured with the webhook so that invoices are marked paid. <br><br><b>Permissions Needed:</b> ANY
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant
     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     
     - parameter request: (body) The request to pay an invoice (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func payStripeInvoiceWithRequestBuilder(request request: StripePaymentRequest? = nil) -> RequestBuilder<Void> {
        let path = "/payment/provider/stripe/payments"
        let URLString = JSAPIAPI.basePath + path
        let parameters = request?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
