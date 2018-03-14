//
// Payments_TransactionsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class Payments_TransactionsAPI: APIBase {
    /**
     Get the details for a single transaction
     
     - parameter id: (path) id 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getTransaction(id id: Int32, completion: ((data: TransactionResource?, error: ErrorType?) -> Void)) {
        getTransactionWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get the details for a single transaction
     - GET /transactions/{id}
     - <b>Permissions Needed:</b> TRANSACTIONS_ADMIN or owner
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant
     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "transaction_id" : "transaction_id",
  "type_hint" : "type_hint",
  "source" : "digital",
  "type" : "type",
  "currency_code" : "currency_code",
  "is_refunded" : false,
  "response" : "response",
  "invoice_id" : 1,
  "details" : "details",
  "id" : 6,
  "create_date" : 0,
  "value" : 5.962133916683182377482808078639209270477294921875,
  "successful" : false
}}]
     
     - parameter id: (path) id 

     - returns: RequestBuilder<TransactionResource> 
     */
    public class func getTransactionWithRequestBuilder(id id: Int32) -> RequestBuilder<TransactionResource> {
        var path = "/transactions/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = JSAPIAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<TransactionResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     List and search transactions
     
     - parameter filterInvoice: (query) Filter for transactions from a specific invoice (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getTransactions(filterInvoice filterInvoice: Int32? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: ((data: PageResourceTransactionResource?, error: ErrorType?) -> Void)) {
        getTransactionsWithRequestBuilder(filterInvoice: filterInvoice, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     List and search transactions
     - GET /transactions
     - <b>Permissions Needed:</b> TRANSACTIONS_ADMIN or owner
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant
     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "number" : 5,
  "last" : true,
  "size" : 7,
  "total_elements" : 9,
  "sort" : [ {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "property",
    "ascending" : true,
    "descending" : true,
    "direction" : "ASC"
  }, {
    "ignore_case" : true,
    "null_handling" : "NATIVE",
    "property" : "property",
    "ascending" : true,
    "descending" : true,
    "direction" : "ASC"
  } ],
  "total_pages" : 3,
  "number_of_elements" : 2,
  "content" : [ {
    "transaction_id" : "transaction_id",
    "type_hint" : "type_hint",
    "source" : "digital",
    "type" : "type",
    "currency_code" : "currency_code",
    "is_refunded" : false,
    "response" : "response",
    "invoice_id" : 1,
    "details" : "details",
    "id" : 6,
    "create_date" : 0,
    "value" : 5.962133916683182377482808078639209270477294921875,
    "successful" : false
  }, {
    "transaction_id" : "transaction_id",
    "type_hint" : "type_hint",
    "source" : "digital",
    "type" : "type",
    "currency_code" : "currency_code",
    "is_refunded" : false,
    "response" : "response",
    "invoice_id" : 1,
    "details" : "details",
    "id" : 6,
    "create_date" : 0,
    "value" : 5.962133916683182377482808078639209270477294921875,
    "successful" : false
  } ],
  "first" : true
}}]
     
     - parameter filterInvoice: (query) Filter for transactions from a specific invoice (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<PageResourceTransactionResource> 
     */
    public class func getTransactionsWithRequestBuilder(filterInvoice filterInvoice: Int32? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceTransactionResource> {
        let path = "/transactions"
        let URLString = JSAPIAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter_invoice": filterInvoice?.encodeToJSON(),
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "order": order
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageResourceTransactionResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Refund a payment transaction, in full or in part
     
     - parameter id: (path) The id of the transaction to refund 
     - parameter request: (body) Request containing refund details (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func refundTransaction(id id: Int32, request: RefundRequest? = nil, completion: ((data: RefundResource?, error: ErrorType?) -> Void)) {
        refundTransactionWithRequestBuilder(id: id, request: request).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Refund a payment transaction, in full or in part
     - POST /transactions/{id}/refunds
     - Will not allow for refunding more than the full amount even with multiple partial refunds. Money is refunded to the payment method used to make the original payment. Payment method must support refunds. <br><br><b>Permissions Needed:</b> PAYMENTS_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant
     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "transaction_id" : 1,
  "amount" : 0.8008281904610115,
  "refund_transaction_id" : 6
}}]
     
     - parameter id: (path) The id of the transaction to refund 
     - parameter request: (body) Request containing refund details (optional)

     - returns: RequestBuilder<RefundResource> 
     */
    public class func refundTransactionWithRequestBuilder(id id: Int32, request: RefundRequest? = nil) -> RequestBuilder<RefundResource> {
        var path = "/transactions/{id}/refunds"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters = request?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<RefundResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}