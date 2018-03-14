//
// Users_SubscriptionsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class Users_SubscriptionsAPI: APIBase {
    /**
     Get details about a user's subscription
     
     - parameter userId: (path) The id of the user 
     - parameter inventoryId: (path) The id of the user&#39;s inventory 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getUserSubscriptionDetails(userId userId: Int32, inventoryId: Int32, completion: ((data: InventorySubscriptionResource?, error: ErrorType?) -> Void)) {
        getUserSubscriptionDetailsWithRequestBuilder(userId: userId, inventoryId: inventoryId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get details about a user's subscription
     - GET /users/{userId}/subscriptions/{inventoryId}
     - <b>Permissions Needed:</b> USERS_SUBSCRIPTIONS_ADMIN or owner
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant
     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "grace_end" : 7,
  "bill_date" : 0,
  "item_id" : 3,
  "inventory_id" : 9,
  "price_override" : 2.027123023002321833274663731572218239307403564453125,
  "recurring_price" : 4.1456080298839363962315474054776132106781005859375,
  "inventory_status" : "pending",
  "subscription_status" : 1,
  "price_override_reason" : "price_override_reason",
  "credit" : 6.02745618307040320615897144307382404804229736328125,
  "credit_log" : [ {
    "reason" : "reason",
    "amount" : 1.46581298050294517310021547018550336360931396484375,
    "inventory_id" : 2,
    "created_date" : 5,
    "id" : 5
  }, {
    "reason" : "reason",
    "amount" : 1.46581298050294517310021547018550336360931396484375,
    "inventory_id" : 2,
    "created_date" : 5,
    "id" : 5
  } ],
  "sku" : "sku",
  "user" : {
    "avatar_url" : "avatar_url",
    "id" : 9,
    "display_name" : "display_name",
    "username" : "username"
  },
  "payment_method" : {
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
  },
  "start_date" : 7
}}]
     
     - parameter userId: (path) The id of the user 
     - parameter inventoryId: (path) The id of the user&#39;s inventory 

     - returns: RequestBuilder<InventorySubscriptionResource> 
     */
    public class func getUserSubscriptionDetailsWithRequestBuilder(userId userId: Int32, inventoryId: Int32) -> RequestBuilder<InventorySubscriptionResource> {
        var path = "/users/{userId}/subscriptions/{inventoryId}"
        path = path.stringByReplacingOccurrencesOfString("{user_id}", withString: "\(userId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{inventory_id}", withString: "\(inventoryId)", options: .LiteralSearch, range: nil)
        let URLString = JSAPIAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<InventorySubscriptionResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get details about a user's subscriptions
     
     - parameter userId: (path) The id of the user 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getUsersSubscriptionDetails(userId userId: Int32, completion: ((data: [InventorySubscriptionResource]?, error: ErrorType?) -> Void)) {
        getUsersSubscriptionDetailsWithRequestBuilder(userId: userId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get details about a user's subscriptions
     - GET /users/{userId}/subscriptions
     - <b>Permissions Needed:</b> USERS_SUBSCRIPTIONS_ADMIN or owner
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant
     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example=[ {
  "grace_end" : 7,
  "bill_date" : 0,
  "item_id" : 3,
  "inventory_id" : 9,
  "price_override" : 2.027123023002321833274663731572218239307403564453125,
  "recurring_price" : 4.1456080298839363962315474054776132106781005859375,
  "inventory_status" : "pending",
  "subscription_status" : 1,
  "price_override_reason" : "price_override_reason",
  "credit" : 6.02745618307040320615897144307382404804229736328125,
  "credit_log" : [ {
    "reason" : "reason",
    "amount" : 1.46581298050294517310021547018550336360931396484375,
    "inventory_id" : 2,
    "created_date" : 5,
    "id" : 5
  }, {
    "reason" : "reason",
    "amount" : 1.46581298050294517310021547018550336360931396484375,
    "inventory_id" : 2,
    "created_date" : 5,
    "id" : 5
  } ],
  "sku" : "sku",
  "user" : {
    "avatar_url" : "avatar_url",
    "id" : 9,
    "display_name" : "display_name",
    "username" : "username"
  },
  "payment_method" : {
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
  },
  "start_date" : 7
}, {
  "grace_end" : 7,
  "bill_date" : 0,
  "item_id" : 3,
  "inventory_id" : 9,
  "price_override" : 2.027123023002321833274663731572218239307403564453125,
  "recurring_price" : 4.1456080298839363962315474054776132106781005859375,
  "inventory_status" : "pending",
  "subscription_status" : 1,
  "price_override_reason" : "price_override_reason",
  "credit" : 6.02745618307040320615897144307382404804229736328125,
  "credit_log" : [ {
    "reason" : "reason",
    "amount" : 1.46581298050294517310021547018550336360931396484375,
    "inventory_id" : 2,
    "created_date" : 5,
    "id" : 5
  }, {
    "reason" : "reason",
    "amount" : 1.46581298050294517310021547018550336360931396484375,
    "inventory_id" : 2,
    "created_date" : 5,
    "id" : 5
  } ],
  "sku" : "sku",
  "user" : {
    "avatar_url" : "avatar_url",
    "id" : 9,
    "display_name" : "display_name",
    "username" : "username"
  },
  "payment_method" : {
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
  },
  "start_date" : 7
} ]}]
     
     - parameter userId: (path) The id of the user 

     - returns: RequestBuilder<[InventorySubscriptionResource]> 
     */
    public class func getUsersSubscriptionDetailsWithRequestBuilder(userId userId: Int32) -> RequestBuilder<[InventorySubscriptionResource]> {
        var path = "/users/{userId}/subscriptions"
        path = path.stringByReplacingOccurrencesOfString("{user_id}", withString: "\(userId)", options: .LiteralSearch, range: nil)
        let URLString = JSAPIAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[InventorySubscriptionResource]>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Reactivate a subscription and charge fee
     
     - parameter userId: (path) The id of the user 
     - parameter inventoryId: (path) The id of the user&#39;s inventory 
     - parameter reactivateSubscriptionRequest: (body) The reactivate subscription request object inventory (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func reactivateUserSubscription(userId userId: Int32, inventoryId: Int32, reactivateSubscriptionRequest: ReactivateSubscriptionRequest? = nil, completion: ((data: InvoiceResource?, error: ErrorType?) -> Void)) {
        reactivateUserSubscriptionWithRequestBuilder(userId: userId, inventoryId: inventoryId, reactivateSubscriptionRequest: reactivateSubscriptionRequest).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Reactivate a subscription and charge fee
     - POST /users/{userId}/subscriptions/{inventoryId}/reactivate
     - <b>Permissions Needed:</b> USERS_SUBSCRIPTIONS_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant
     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "shipping_city_name" : "shipping_city_name",
  "order_notes" : "order_notes",
  "parent_invoice_id" : 1,
  "discount" : 6.02745618307040320615897144307382404804229736328125,
  "state_tax" : 5.02500479152029466689555192715488374233245849609375,
  "cart_id" : "cart_id",
  "name_prefix" : "name_prefix",
  "billing_postal_code" : "billing_postal_code",
  "shipping" : 1.173074250955943309548956676735542714595794677734375,
  "billing_state_name" : "billing_state_name",
  "billing_country_name" : "billing_country_name",
  "currency" : "currency",
  "current_fulfillment_status" : "current_fulfillment_status",
  "grand_total" : 5.962133916683182377482808078639209270477294921875,
  "id" : 5,
  "current_payment_status" : "current_payment_status",
  "billing_address1" : "billing_address1",
  "invoice_number" : "invoice_number",
  "billing_address2" : "billing_address2",
  "email" : "email",
  "remaining_balance" : 7.4577447736837658709418974467553198337554931640625,
  "vendor_name" : "vendor_name",
  "billing_full_name" : "billing_full_name",
  "sort" : 4,
  "shipping_full_name" : "shipping_full_name",
  "fed_tax" : 1.46581298050294517310021547018550336360931396484375,
  "payment_method_id" : 6,
  "phone" : "phone",
  "external_ref" : "external_ref",
  "shipping_address2" : "shipping_address2",
  "subtotal" : 9.965781217890562260208753286860883235931396484375,
  "shipping_address1" : "shipping_address1",
  "vendor_id" : 6,
  "shipping_state_name" : "shipping_state_name",
  "billing_city_name" : "billing_city_name",
  "phone_number" : "phone_number",
  "created_date" : 0,
  "shipping_country_name" : "shipping_country_name",
  "updated_date" : 9,
  "items" : [ {
    "type_hint" : "type_hint",
    "total_price" : 1.231513536777255612975068288506008684635162353515625,
    "item_id" : 9,
    "system_price" : 7.3862819483858839220147274318151175975799560546875,
    "item_name" : "item_name",
    "original_unit_price" : 2.027123023002321833274663731572218239307403564453125,
    "unit_price" : 1.024645700144157789424070870154537260532379150390625,
    "qty" : 4,
    "invoice_id" : 7,
    "current_fulfillment_status" : "current_fulfillment_status",
    "id" : 2,
    "sale_name" : "sale_name",
    "bundle_sku" : "bundle_sku",
    "original_total_price" : 3.61607674925191080461672754609026014804840087890625,
    "sku" : "sku",
    "sku_description" : "sku_description"
  }, {
    "type_hint" : "type_hint",
    "total_price" : 1.231513536777255612975068288506008684635162353515625,
    "item_id" : 9,
    "system_price" : 7.3862819483858839220147274318151175975799560546875,
    "item_name" : "item_name",
    "original_unit_price" : 2.027123023002321833274663731572218239307403564453125,
    "unit_price" : 1.024645700144157789424070870154537260532379150390625,
    "qty" : 4,
    "invoice_id" : 7,
    "current_fulfillment_status" : "current_fulfillment_status",
    "id" : 2,
    "sale_name" : "sale_name",
    "bundle_sku" : "bundle_sku",
    "original_total_price" : 3.61607674925191080461672754609026014804840087890625,
    "sku" : "sku",
    "sku_description" : "sku_description"
  } ],
  "user" : {
    "avatar_url" : "avatar_url",
    "id" : 9,
    "display_name" : "display_name",
    "username" : "username"
  },
  "shipping_postal_code" : "shipping_postal_code"
}}]
     
     - parameter userId: (path) The id of the user 
     - parameter inventoryId: (path) The id of the user&#39;s inventory 
     - parameter reactivateSubscriptionRequest: (body) The reactivate subscription request object inventory (optional)

     - returns: RequestBuilder<InvoiceResource> 
     */
    public class func reactivateUserSubscriptionWithRequestBuilder(userId userId: Int32, inventoryId: Int32, reactivateSubscriptionRequest: ReactivateSubscriptionRequest? = nil) -> RequestBuilder<InvoiceResource> {
        var path = "/users/{userId}/subscriptions/{inventoryId}/reactivate"
        path = path.stringByReplacingOccurrencesOfString("{user_id}", withString: "\(userId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{inventory_id}", withString: "\(inventoryId)", options: .LiteralSearch, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters = reactivateSubscriptionRequest?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<InvoiceResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Set a new date to bill a subscription on
     
     - parameter userId: (path) The id of the user 
     - parameter inventoryId: (path) The id of the user&#39;s inventory 
     - parameter billDate: (body) The new bill date. Unix timestamp in seconds 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func setSubscriptionBillDate(userId userId: Int32, inventoryId: Int32, billDate: Int64, completion: ((error: ErrorType?) -> Void)) {
        setSubscriptionBillDateWithRequestBuilder(userId: userId, inventoryId: inventoryId, billDate: billDate).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Set a new date to bill a subscription on
     - PUT /users/{userId}/subscriptions/{inventoryId}/bill-date
     - <b>Permissions Needed:</b> USERS_SUBSCRIPTIONS_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant
     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     
     - parameter userId: (path) The id of the user 
     - parameter inventoryId: (path) The id of the user&#39;s inventory 
     - parameter billDate: (body) The new bill date. Unix timestamp in seconds 

     - returns: RequestBuilder<Void> 
     */
    public class func setSubscriptionBillDateWithRequestBuilder(userId userId: Int32, inventoryId: Int32, billDate: Int64) -> RequestBuilder<Void> {
        var path = "/users/{userId}/subscriptions/{inventoryId}/bill-date"
        path = path.stringByReplacingOccurrencesOfString("{user_id}", withString: "\(userId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{inventory_id}", withString: "\(inventoryId)", options: .LiteralSearch, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters = billDate.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Set the payment method to use for a subscription
     
     - parameter userId: (path) The id of the user 
     - parameter inventoryId: (path) The id of the user&#39;s inventory 
     - parameter paymentMethodId: (body) The id of the payment method (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func setSubscriptionPaymentMethod(userId userId: Int32, inventoryId: Int32, paymentMethodId: IntWrapper? = nil, completion: ((error: ErrorType?) -> Void)) {
        setSubscriptionPaymentMethodWithRequestBuilder(userId: userId, inventoryId: inventoryId, paymentMethodId: paymentMethodId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Set the payment method to use for a subscription
     - PUT /users/{userId}/subscriptions/{inventoryId}/payment-method
     - May send null to use floating default. <br><br><b>Permissions Needed:</b> USERS_SUBSCRIPTIONS_ADMIN or owner
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant
     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     
     - parameter userId: (path) The id of the user 
     - parameter inventoryId: (path) The id of the user&#39;s inventory 
     - parameter paymentMethodId: (body) The id of the payment method (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func setSubscriptionPaymentMethodWithRequestBuilder(userId userId: Int32, inventoryId: Int32, paymentMethodId: IntWrapper? = nil) -> RequestBuilder<Void> {
        var path = "/users/{userId}/subscriptions/{inventoryId}/payment-method"
        path = path.stringByReplacingOccurrencesOfString("{user_id}", withString: "\(userId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{inventory_id}", withString: "\(inventoryId)", options: .LiteralSearch, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters = paymentMethodId?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Set the status of a subscription
     
     - parameter userId: (path) The id of the user 
     - parameter inventoryId: (path) The id of the user&#39;s inventory 
     - parameter status: (body) The new status for the subscription 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func setSubscriptionStatus(userId userId: Int32, inventoryId: Int32, status: SubscriptionStatusWrapper, completion: ((error: ErrorType?) -> Void)) {
        setSubscriptionStatusWithRequestBuilder(userId: userId, inventoryId: inventoryId, status: status).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Set the status of a subscription
     - PUT /users/{userId}/subscriptions/{inventoryId}/status
     - Note that the new status may be blocked if the system is not configured to allow the current status to be changed to the new, to enforce proper flow. The default options for statuses are shown below but may be altered for special use cases. <br><br><b>Permissions Needed:</b> USERS_SUBSCRIPTIONS_ADMIN or owner
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant
     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     
     - parameter userId: (path) The id of the user 
     - parameter inventoryId: (path) The id of the user&#39;s inventory 
     - parameter status: (body) The new status for the subscription 

     - returns: RequestBuilder<Void> 
     */
    public class func setSubscriptionStatusWithRequestBuilder(userId userId: Int32, inventoryId: Int32, status: SubscriptionStatusWrapper) -> RequestBuilder<Void> {
        var path = "/users/{userId}/subscriptions/{inventoryId}/status"
        path = path.stringByReplacingOccurrencesOfString("{user_id}", withString: "\(userId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{inventory_id}", withString: "\(inventoryId)", options: .LiteralSearch, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters = status.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Set a new subscription plan for a user
     
     - parameter userId: (path) The id of the user 
     - parameter inventoryId: (path) The id of the user&#39;s inventory 
     - parameter planId: (body) The id of the new plan. Must be from the same subscription (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func setUserSubscriptionPlan(userId userId: Int32, inventoryId: Int32, planId: StringWrapper? = nil, completion: ((error: ErrorType?) -> Void)) {
        setUserSubscriptionPlanWithRequestBuilder(userId: userId, inventoryId: inventoryId, planId: planId).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Set a new subscription plan for a user
     - PUT /users/{userId}/subscriptions/{inventoryId}/plan
     - <b>Permissions Needed:</b> USERS_SUBSCRIPTIONS_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant
     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     
     - parameter userId: (path) The id of the user 
     - parameter inventoryId: (path) The id of the user&#39;s inventory 
     - parameter planId: (body) The id of the new plan. Must be from the same subscription (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func setUserSubscriptionPlanWithRequestBuilder(userId userId: Int32, inventoryId: Int32, planId: StringWrapper? = nil) -> RequestBuilder<Void> {
        var path = "/users/{userId}/subscriptions/{inventoryId}/plan"
        path = path.stringByReplacingOccurrencesOfString("{user_id}", withString: "\(userId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{inventory_id}", withString: "\(inventoryId)", options: .LiteralSearch, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters = planId?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Set a new subscription price for a user
     
     - parameter userId: (path) The id of the user 
     - parameter inventoryId: (path) The id of the user&#39;s inventory 
     - parameter theOverrideDetails: (body) override (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func setUserSubscriptionPrice(userId userId: Int32, inventoryId: Int32, theOverrideDetails: SubscriptionPriceOverrideRequest? = nil, completion: ((error: ErrorType?) -> Void)) {
        setUserSubscriptionPriceWithRequestBuilder(userId: userId, inventoryId: inventoryId, theOverrideDetails: theOverrideDetails).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Set a new subscription price for a user
     - PUT /users/{userId}/subscriptions/{inventoryId}/price-override
     - This new price will be what the user is charged at the begining of each new period. This override is specific to the current subscription and will not carry over if they end and later re-subscribe. It will persist if the plan is changed using the setUserSubscriptionPlan endpoint. <br><br><b>Permissions Needed:</b> USERS_SUBSCRIPTIONS_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant
     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     
     - parameter userId: (path) The id of the user 
     - parameter inventoryId: (path) The id of the user&#39;s inventory 
     - parameter theOverrideDetails: (body) override (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func setUserSubscriptionPriceWithRequestBuilder(userId userId: Int32, inventoryId: Int32, theOverrideDetails: SubscriptionPriceOverrideRequest? = nil) -> RequestBuilder<Void> {
        var path = "/users/{userId}/subscriptions/{inventoryId}/price-override"
        path = path.stringByReplacingOccurrencesOfString("{user_id}", withString: "\(userId)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{inventory_id}", withString: "\(inventoryId)", options: .LiteralSearch, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters = theOverrideDetails?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}