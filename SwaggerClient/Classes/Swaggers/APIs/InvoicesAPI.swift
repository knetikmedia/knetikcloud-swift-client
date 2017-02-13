//
// InvoicesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class InvoicesAPI: APIBase {
    /**
     Create an invoice
     
     - parameter req: (body) Invoice to be created (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func createInvoice(req req: InvoiceCreateRequest? = nil, completion: ((data: [InvoiceResource]?, error: ErrorType?) -> Void)) {
        createInvoiceWithRequestBuilder(req: req).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create an invoice
     - POST /invoices
     - Create an invoice(s) by providing a cart GUID. Note that there may be multiple invoices created, one per vendor.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example=[ {
  "shipping_city_name" : "aeiou",
  "order_notes" : "aeiou",
  "parent_invoice_id" : 123,
  "discount" : 1.3579000000000001069366817318950779736042022705078125,
  "state_tax" : 1.3579000000000001069366817318950779736042022705078125,
  "cart_id" : "aeiou",
  "name_prefix" : "aeiou",
  "billing_postal_code" : "aeiou",
  "shipping" : 1.3579000000000001069366817318950779736042022705078125,
  "billing_state_name" : "aeiou",
  "billing_country_name" : "aeiou",
  "currency" : "aeiou",
  "current_fulfillment_status" : "aeiou",
  "grand_total" : 1.3579000000000001069366817318950779736042022705078125,
  "id" : 123,
  "current_payment_status" : "aeiou",
  "billing_address1" : "aeiou",
  "invoice_number" : "aeiou",
  "billing_address2" : "aeiou",
  "email" : "aeiou",
  "vendor_name" : "aeiou",
  "billing_full_name" : "aeiou",
  "sort" : 123,
  "shipping_full_name" : "aeiou",
  "fed_tax" : 1.3579000000000001069366817318950779736042022705078125,
  "payment_method_id" : 123,
  "phone" : "aeiou",
  "external_ref" : "aeiou",
  "shipping_address2" : "aeiou",
  "subtotal" : 1.3579000000000001069366817318950779736042022705078125,
  "shipping_address1" : "aeiou",
  "vendor_id" : 123,
  "shipping_state_name" : "aeiou",
  "billing_city_name" : "aeiou",
  "phone_number" : "aeiou",
  "created_date" : 123456789,
  "shipping_country_name" : "aeiou",
  "updated_date" : 123456789,
  "items" : [ {
    "type_hint" : "aeiou",
    "total_price" : 1.3579000000000001069366817318950779736042022705078125,
    "affiliate_id" : 123,
    "item_id" : 123,
    "system_price" : 1.3579000000000001069366817318950779736042022705078125,
    "item_name" : "aeiou",
    "original_unit_price" : 1.3579000000000001069366817318950779736042022705078125,
    "unit_price" : 1.3579000000000001069366817318950779736042022705078125,
    "qty" : 123,
    "invoice_id" : 123,
    "current_fulfillment_status" : "aeiou",
    "id" : 123,
    "sale_name" : "aeiou",
    "bundle_sku" : "aeiou",
    "original_total_price" : 1.3579000000000001069366817318950779736042022705078125,
    "sku" : "aeiou",
    "sku_description" : "aeiou"
  } ],
  "user" : {
    "avatar_url" : "aeiou",
    "id" : 123,
    "display_name" : "aeiou",
    "username" : "aeiou"
  },
  "shipping_postal_code" : "aeiou"
} ]}]
     
     - parameter req: (body) Invoice to be created (optional)

     - returns: RequestBuilder<[InvoiceResource]> 
     */
    public class func createInvoiceWithRequestBuilder(req req: InvoiceCreateRequest? = nil) -> RequestBuilder<[InvoiceResource]> {
        let path = "/invoices"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = req?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[InvoiceResource]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Lists available fulfillment statuses
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getFulFillmentStatuses(completion: ((data: [String]?, error: ErrorType?) -> Void)) {
        getFulFillmentStatusesWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Lists available fulfillment statuses
     - GET /invoices/fulfillment-statuses
     - examples: [{contentType=application/json, example=[ "aeiou" ]}]

     - returns: RequestBuilder<[String]> 
     */
    public class func getFulFillmentStatusesWithRequestBuilder() -> RequestBuilder<[String]> {
        let path = "/invoices/fulfillment-statuses"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[String]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Retrieve an invoice
     
     - parameter id: (path) The id of the invoice 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getInvoice(id id: Int32, completion: ((data: InvoiceResource?, error: ErrorType?) -> Void)) {
        getInvoiceWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Retrieve an invoice
     - GET /invoices/{id}
     - OAuth:
       - type: oauth2
       - name: OAuth2
     - examples: [{contentType=application/json, example={
  "shipping_city_name" : "aeiou",
  "order_notes" : "aeiou",
  "parent_invoice_id" : 123,
  "discount" : 1.3579000000000001069366817318950779736042022705078125,
  "state_tax" : 1.3579000000000001069366817318950779736042022705078125,
  "cart_id" : "aeiou",
  "name_prefix" : "aeiou",
  "billing_postal_code" : "aeiou",
  "shipping" : 1.3579000000000001069366817318950779736042022705078125,
  "billing_state_name" : "aeiou",
  "billing_country_name" : "aeiou",
  "currency" : "aeiou",
  "current_fulfillment_status" : "aeiou",
  "grand_total" : 1.3579000000000001069366817318950779736042022705078125,
  "id" : 123,
  "current_payment_status" : "aeiou",
  "billing_address1" : "aeiou",
  "invoice_number" : "aeiou",
  "billing_address2" : "aeiou",
  "email" : "aeiou",
  "vendor_name" : "aeiou",
  "billing_full_name" : "aeiou",
  "sort" : 123,
  "shipping_full_name" : "aeiou",
  "fed_tax" : 1.3579000000000001069366817318950779736042022705078125,
  "payment_method_id" : 123,
  "phone" : "aeiou",
  "external_ref" : "aeiou",
  "shipping_address2" : "aeiou",
  "subtotal" : 1.3579000000000001069366817318950779736042022705078125,
  "shipping_address1" : "aeiou",
  "vendor_id" : 123,
  "shipping_state_name" : "aeiou",
  "billing_city_name" : "aeiou",
  "phone_number" : "aeiou",
  "created_date" : 123456789,
  "shipping_country_name" : "aeiou",
  "updated_date" : 123456789,
  "items" : [ {
    "type_hint" : "aeiou",
    "total_price" : 1.3579000000000001069366817318950779736042022705078125,
    "affiliate_id" : 123,
    "item_id" : 123,
    "system_price" : 1.3579000000000001069366817318950779736042022705078125,
    "item_name" : "aeiou",
    "original_unit_price" : 1.3579000000000001069366817318950779736042022705078125,
    "unit_price" : 1.3579000000000001069366817318950779736042022705078125,
    "qty" : 123,
    "invoice_id" : 123,
    "current_fulfillment_status" : "aeiou",
    "id" : 123,
    "sale_name" : "aeiou",
    "bundle_sku" : "aeiou",
    "original_total_price" : 1.3579000000000001069366817318950779736042022705078125,
    "sku" : "aeiou",
    "sku_description" : "aeiou"
  } ],
  "user" : {
    "avatar_url" : "aeiou",
    "id" : 123,
    "display_name" : "aeiou",
    "username" : "aeiou"
  },
  "shipping_postal_code" : "aeiou"
}}]
     
     - parameter id: (path) The id of the invoice 

     - returns: RequestBuilder<InvoiceResource> 
     */
    public class func getInvoiceWithRequestBuilder(id id: Int32) -> RequestBuilder<InvoiceResource> {
        var path = "/invoices/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<InvoiceResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     List invoice logs
     
     - parameter id: (path) The id of the invoice 
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getInvoiceLogs(id id: Int32, size: Int32? = nil, page: Int32? = nil, completion: ((data: PageResourceInvoiceLogEntry?, error: ErrorType?) -> Void)) {
        getInvoiceLogsWithRequestBuilder(id: id, size: size, page: page).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     List invoice logs
     - GET /invoices/{id}/logs
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
    "date" : 123456789,
    "invoice_id" : 123,
    "message" : "aeiou",
    "type" : "aeiou"
  } ],
  "first" : true
}}]
     
     - parameter id: (path) The id of the invoice 
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)

     - returns: RequestBuilder<PageResourceInvoiceLogEntry> 
     */
    public class func getInvoiceLogsWithRequestBuilder(id id: Int32, size: Int32? = nil, page: Int32? = nil) -> RequestBuilder<PageResourceInvoiceLogEntry> {
        var path = "/invoices/{id}/logs"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageResourceInvoiceLogEntry>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Retrieve invoices
     
     - parameter filterUser: (query) The id of a user to get invoices for. Automtically added if not being called with admin permissions. (optional)
     - parameter filterEmail: (query) Filters invoices by customer&#39;s email. Admins only. (optional)
     - parameter filterFulfillmentStatus: (query) Filters invoices by fulfillment status type. Can be a comma separated list of statuses (optional)
     - parameter filterPaymentStatus: (query) Filters invoices by payment status type. Can be a comma separated list of statuses (optional)
     - parameter filterItemName: (query) Filters invoices by item name containing the given string (optional)
     - parameter filterExternalRef: (query) Filters invoices by external reference. (optional)
     - parameter filterCreatedDate: (query) Filters invoices by creation date. Multiple values possible for range search. Format: filter_created_date&#x3D;OP,ts&amp;... where OP in (GT, LT, GOE, LOE, EQ) and ts is a unix timestamp in seconds. Ex: filter_created_date&#x3D;GT,1452154258,LT,1554254874 (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to 1)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getInvoices(filterUser filterUser: Int32? = nil, filterEmail: String? = nil, filterFulfillmentStatus: String? = nil, filterPaymentStatus: String? = nil, filterItemName: String? = nil, filterExternalRef: String? = nil, filterCreatedDate: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: ((data: PageResourceInvoiceResource?, error: ErrorType?) -> Void)) {
        getInvoicesWithRequestBuilder(filterUser: filterUser, filterEmail: filterEmail, filterFulfillmentStatus: filterFulfillmentStatus, filterPaymentStatus: filterPaymentStatus, filterItemName: filterItemName, filterExternalRef: filterExternalRef, filterCreatedDate: filterCreatedDate, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Retrieve invoices
     - GET /invoices
     - Without INVOICES_ADMIN permission the results are automatically filtered for only the logged in user's invoices. It is recomended however that filter_user be added to avoid issues for admin users accidentally getting additional invoices.
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
    "shipping_city_name" : "aeiou",
    "order_notes" : "aeiou",
    "parent_invoice_id" : 123,
    "discount" : 1.3579000000000001069366817318950779736042022705078125,
    "state_tax" : 1.3579000000000001069366817318950779736042022705078125,
    "cart_id" : "aeiou",
    "name_prefix" : "aeiou",
    "billing_postal_code" : "aeiou",
    "shipping" : 1.3579000000000001069366817318950779736042022705078125,
    "billing_state_name" : "aeiou",
    "billing_country_name" : "aeiou",
    "currency" : "aeiou",
    "current_fulfillment_status" : "aeiou",
    "grand_total" : 1.3579000000000001069366817318950779736042022705078125,
    "id" : 123,
    "current_payment_status" : "aeiou",
    "billing_address1" : "aeiou",
    "invoice_number" : "aeiou",
    "billing_address2" : "aeiou",
    "email" : "aeiou",
    "vendor_name" : "aeiou",
    "billing_full_name" : "aeiou",
    "sort" : 123,
    "shipping_full_name" : "aeiou",
    "fed_tax" : 1.3579000000000001069366817318950779736042022705078125,
    "payment_method_id" : 123,
    "phone" : "aeiou",
    "external_ref" : "aeiou",
    "shipping_address2" : "aeiou",
    "subtotal" : 1.3579000000000001069366817318950779736042022705078125,
    "shipping_address1" : "aeiou",
    "vendor_id" : 123,
    "shipping_state_name" : "aeiou",
    "billing_city_name" : "aeiou",
    "phone_number" : "aeiou",
    "created_date" : 123456789,
    "shipping_country_name" : "aeiou",
    "updated_date" : 123456789,
    "items" : [ {
      "type_hint" : "aeiou",
      "total_price" : 1.3579000000000001069366817318950779736042022705078125,
      "affiliate_id" : 123,
      "item_id" : 123,
      "system_price" : 1.3579000000000001069366817318950779736042022705078125,
      "item_name" : "aeiou",
      "original_unit_price" : 1.3579000000000001069366817318950779736042022705078125,
      "unit_price" : 1.3579000000000001069366817318950779736042022705078125,
      "qty" : 123,
      "invoice_id" : 123,
      "current_fulfillment_status" : "aeiou",
      "id" : 123,
      "sale_name" : "aeiou",
      "bundle_sku" : "aeiou",
      "original_total_price" : 1.3579000000000001069366817318950779736042022705078125,
      "sku" : "aeiou",
      "sku_description" : "aeiou"
    } ],
    "user" : {
      "avatar_url" : "aeiou",
      "id" : 123,
      "display_name" : "aeiou",
      "username" : "aeiou"
    },
    "shipping_postal_code" : "aeiou"
  } ],
  "first" : true
}}]
     
     - parameter filterUser: (query) The id of a user to get invoices for. Automtically added if not being called with admin permissions. (optional)
     - parameter filterEmail: (query) Filters invoices by customer&#39;s email. Admins only. (optional)
     - parameter filterFulfillmentStatus: (query) Filters invoices by fulfillment status type. Can be a comma separated list of statuses (optional)
     - parameter filterPaymentStatus: (query) Filters invoices by payment status type. Can be a comma separated list of statuses (optional)
     - parameter filterItemName: (query) Filters invoices by item name containing the given string (optional)
     - parameter filterExternalRef: (query) Filters invoices by external reference. (optional)
     - parameter filterCreatedDate: (query) Filters invoices by creation date. Multiple values possible for range search. Format: filter_created_date&#x3D;OP,ts&amp;... where OP in (GT, LT, GOE, LOE, EQ) and ts is a unix timestamp in seconds. Ex: filter_created_date&#x3D;GT,1452154258,LT,1554254874 (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to 1)

     - returns: RequestBuilder<PageResourceInvoiceResource> 
     */
    public class func getInvoicesWithRequestBuilder(filterUser filterUser: Int32? = nil, filterEmail: String? = nil, filterFulfillmentStatus: String? = nil, filterPaymentStatus: String? = nil, filterItemName: String? = nil, filterExternalRef: String? = nil, filterCreatedDate: String? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceInvoiceResource> {
        let path = "/invoices"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter_user": filterUser?.encodeToJSON(),
            "filter_email": filterEmail,
            "filter_fulfillment_status": filterFulfillmentStatus,
            "filter_payment_status": filterPaymentStatus,
            "filter_item_name": filterItemName,
            "filter_external_ref": filterExternalRef,
            "filter_created_date": filterCreatedDate,
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "order": order
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageResourceInvoiceResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Lists available payment statuses
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getPaymentStatuses(completion: ((data: [String]?, error: ErrorType?) -> Void)) {
        getPaymentStatusesWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Lists available payment statuses
     - GET /invoices/payment-statuses
     - examples: [{contentType=application/json, example=[ "aeiou" ]}]

     - returns: RequestBuilder<[String]> 
     */
    public class func getPaymentStatusesWithRequestBuilder() -> RequestBuilder<[String]> {
        let path = "/invoices/payment-statuses"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<[String]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Trigger payment of an invoice
     
     - parameter id: (path) The id of the invoice 
     - parameter request: (body) Payment info (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func payInvoice(id id: Int32, request: PayBySavedMethodRequest? = nil, completion: ((error: ErrorType?) -> Void)) {
        payInvoiceWithRequestBuilder(id: id, request: request).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Trigger payment of an invoice
     - POST /invoices/{id}/payments
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the invoice 
     - parameter request: (body) Payment info (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func payInvoiceWithRequestBuilder(id id: Int32, request: PayBySavedMethodRequest? = nil) -> RequestBuilder<Void> {
        var path = "/invoices/{id}/payments"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = request?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Set the external reference of an invoice
     
     - parameter id: (path) The id of the invoice 
     - parameter externalRef: (body) External reference info (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func setExternalRef(id id: Int32, externalRef: String? = nil, completion: ((error: ErrorType?) -> Void)) {
        setExternalRefWithRequestBuilder(id: id, externalRef: externalRef).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Set the external reference of an invoice
     - PUT /invoices/{id}/external-ref
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the invoice 
     - parameter externalRef: (body) External reference info (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func setExternalRefWithRequestBuilder(id id: Int32, externalRef: String? = nil) -> RequestBuilder<Void> {
        var path = "/invoices/{id}/external-ref"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = externalRef?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Set the fulfillment status of an invoice item
     
     - parameter id: (path) The id of the invoice 
     - parameter sku: (path) The sku of an item in the invoice 
     - parameter status: (body) The new fulfillment status for the item. Additional options may be available based on configuration.  Allowable values:  &#39;unfulfilled&#39;, &#39;fulfilled&#39;, &#39;not fulfillable&#39;, &#39;failed&#39;, &#39;processing&#39;, &#39;failed_permanent&#39;, &#39;delayed&#39; 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func setInvoiceItemFulfillmentStatus(id id: Int32, sku: String, status: String, completion: ((error: ErrorType?) -> Void)) {
        setInvoiceItemFulfillmentStatusWithRequestBuilder(id: id, sku: sku, status: status).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Set the fulfillment status of an invoice item
     - PUT /invoices/{id}/items/{sku}/fulfillment-status
     - This allows external fulfillment systems to report success or failure. Fulfillment status changes are restricted by a specific flow determining which status can lead to which.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the invoice 
     - parameter sku: (path) The sku of an item in the invoice 
     - parameter status: (body) The new fulfillment status for the item. Additional options may be available based on configuration.  Allowable values:  &#39;unfulfilled&#39;, &#39;fulfilled&#39;, &#39;not fulfillable&#39;, &#39;failed&#39;, &#39;processing&#39;, &#39;failed_permanent&#39;, &#39;delayed&#39; 

     - returns: RequestBuilder<Void> 
     */
    public class func setInvoiceItemFulfillmentStatusWithRequestBuilder(id id: Int32, sku: String, status: String) -> RequestBuilder<Void> {
        var path = "/invoices/{id}/items/{sku}/fulfillment-status"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        path = path.stringByReplacingOccurrencesOfString("{sku}", withString: "\(sku)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = status.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Set the order notes of an invoice
     
     - parameter id: (path) The id of the invoice 
     - parameter orderNotes: (body) Payment status info (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func setOrderNotes(id id: Int32, orderNotes: String? = nil, completion: ((error: ErrorType?) -> Void)) {
        setOrderNotesWithRequestBuilder(id: id, orderNotes: orderNotes).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Set the order notes of an invoice
     - PUT /invoices/{id}/order-notes
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the invoice 
     - parameter orderNotes: (body) Payment status info (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func setOrderNotesWithRequestBuilder(id id: Int32, orderNotes: String? = nil) -> RequestBuilder<Void> {
        var path = "/invoices/{id}/order-notes"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = orderNotes?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Set the payment status of an invoice
     
     - parameter id: (path) The id of the invoice 
     - parameter request: (body) Payment status info (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func setPaymentStatus(id id: Int32, request: InvoicePaymentStatusRequest? = nil, completion: ((error: ErrorType?) -> Void)) {
        setPaymentStatusWithRequestBuilder(id: id, request: request).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Set the payment status of an invoice
     - PUT /invoices/{id}/payment-status
     - This may trigger fulfillment if setting the status to 'paid'. This is mainly intended to support external payment systems that cannot be incorporated into the payment method system. Payment status changes are restricted by a specific flow determining which status can lead to which.
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the invoice 
     - parameter request: (body) Payment status info (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func setPaymentStatusWithRequestBuilder(id id: Int32, request: InvoicePaymentStatusRequest? = nil) -> RequestBuilder<Void> {
        var path = "/invoices/{id}/payment-status"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = request?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Set or update billing info
     
     - parameter id: (path) The id of the invoice 
     - parameter billingInfoRequest: (body) Address info (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateBillingInfo(id id: Int32, billingInfoRequest: AddressResource? = nil, completion: ((error: ErrorType?) -> Void)) {
        updateBillingInfoWithRequestBuilder(id: id, billingInfoRequest: billingInfoRequest).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Set or update billing info
     - PUT /invoices/{id}/billing-address
     - OAuth:
       - type: oauth2
       - name: OAuth2
     
     - parameter id: (path) The id of the invoice 
     - parameter billingInfoRequest: (body) Address info (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func updateBillingInfoWithRequestBuilder(id id: Int32, billingInfoRequest: AddressResource? = nil) -> RequestBuilder<Void> {
        var path = "/invoices/{id}/billing-address"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = billingInfoRequest?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}