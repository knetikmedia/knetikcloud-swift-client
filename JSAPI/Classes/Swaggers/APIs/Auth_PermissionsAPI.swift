//
// Auth_PermissionsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class Auth_PermissionsAPI: APIBase {
    /**
     Create a new permission
     
     - parameter permissionResource: (body) The permission resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func createPermission(permissionResource permissionResource: PermissionResource? = nil, completion: ((data: PermissionResource?, error: ErrorType?) -> Void)) {
        createPermissionWithRequestBuilder(permissionResource: permissionResource).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create a new permission
     - POST /auth/permissions
     - <b>Permissions Needed:</b> PERMISSIONS_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant
     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "parent" : "parent",
  "name" : "name",
  "description" : "description",
  "permission" : "permission",
  "created_date" : 1,
  "updated_date" : 5,
  "locked" : false
}}]
     
     - parameter permissionResource: (body) The permission resource object (optional)

     - returns: RequestBuilder<PermissionResource> 
     */
    public class func createPermissionWithRequestBuilder(permissionResource permissionResource: PermissionResource? = nil) -> RequestBuilder<PermissionResource> {
        let path = "/auth/permissions"
        let URLString = JSAPIAPI.basePath + path
        let parameters = permissionResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PermissionResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a permission
     
     - parameter permission: (path) The permission value 
     - parameter force: (query) If true, removes permission assigned to roles (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deletePermission(permission permission: String, force: Bool? = nil, completion: ((error: ErrorType?) -> Void)) {
        deletePermissionWithRequestBuilder(permission: permission, force: force).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a permission
     - DELETE /auth/permissions/{permission}
     - <b>Permissions Needed:</b> PERMISSIONS_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant
     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     
     - parameter permission: (path) The permission value 
     - parameter force: (query) If true, removes permission assigned to roles (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func deletePermissionWithRequestBuilder(permission permission: String, force: Bool? = nil) -> RequestBuilder<Void> {
        var path = "/auth/permissions/{permission}"
        path = path.stringByReplacingOccurrencesOfString("{permission}", withString: "\(permission)", options: .LiteralSearch, range: nil)
        let URLString = JSAPIAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "force": force
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a single permission
     
     - parameter permission: (path) The permission value 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getPermission(permission permission: String, completion: ((data: PermissionResource?, error: ErrorType?) -> Void)) {
        getPermissionWithRequestBuilder(permission: permission).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a single permission
     - GET /auth/permissions/{permission}
     - <b>Permissions Needed:</b> PERMISSIONS_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant
     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "parent" : "parent",
  "name" : "name",
  "description" : "description",
  "permission" : "permission",
  "created_date" : 1,
  "updated_date" : 5,
  "locked" : false
}}]
     
     - parameter permission: (path) The permission value 

     - returns: RequestBuilder<PermissionResource> 
     */
    public class func getPermissionWithRequestBuilder(permission permission: String) -> RequestBuilder<PermissionResource> {
        var path = "/auth/permissions/{permission}"
        path = path.stringByReplacingOccurrencesOfString("{permission}", withString: "\(permission)", options: .LiteralSearch, range: nil)
        let URLString = JSAPIAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PermissionResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     List and search permissions
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to permission:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getPermissions(size size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: ((data: PageResourcePermissionResource?, error: ErrorType?) -> Void)) {
        getPermissionsWithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     List and search permissions
     - GET /auth/permissions
     - <b>Permissions Needed:</b> PERMISSIONS_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant
     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "number" : 0,
  "last" : true,
  "size" : 1,
  "total_elements" : 5,
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
  "total_pages" : 5,
  "number_of_elements" : 6,
  "content" : [ {
    "parent" : "parent",
    "name" : "name",
    "description" : "description",
    "permission" : "permission",
    "created_date" : 1,
    "updated_date" : 5,
    "locked" : false
  }, {
    "parent" : "parent",
    "name" : "name",
    "description" : "description",
    "permission" : "permission",
    "created_date" : 1,
    "updated_date" : 5,
    "locked" : false
  } ],
  "first" : true
}}]
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to permission:ASC)

     - returns: RequestBuilder<PageResourcePermissionResource> 
     */
    public class func getPermissionsWithRequestBuilder(size size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourcePermissionResource> {
        let path = "/auth/permissions"
        let URLString = JSAPIAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "order": order
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageResourcePermissionResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Update a permission
     
     - parameter permission: (path) The permission value 
     - parameter permissionResource: (body) The permission resource object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updatePermission(permission permission: String, permissionResource: PermissionResource? = nil, completion: ((data: PermissionResource?, error: ErrorType?) -> Void)) {
        updatePermissionWithRequestBuilder(permission: permission, permissionResource: permissionResource).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Update a permission
     - PUT /auth/permissions/{permission}
     - <b>Permissions Needed:</b> PERMISSIONS_ADMIN
     - OAuth:
       - type: oauth2
       - name: oauth2_client_credentials_grant
     - OAuth:
       - type: oauth2
       - name: oauth2_password_grant
     - examples: [{contentType=application/json, example={
  "parent" : "parent",
  "name" : "name",
  "description" : "description",
  "permission" : "permission",
  "created_date" : 1,
  "updated_date" : 5,
  "locked" : false
}}]
     
     - parameter permission: (path) The permission value 
     - parameter permissionResource: (body) The permission resource object (optional)

     - returns: RequestBuilder<PermissionResource> 
     */
    public class func updatePermissionWithRequestBuilder(permission permission: String, permissionResource: PermissionResource? = nil) -> RequestBuilder<PermissionResource> {
        var path = "/auth/permissions/{permission}"
        path = path.stringByReplacingOccurrencesOfString("{permission}", withString: "\(permission)", options: .LiteralSearch, range: nil)
        let URLString = JSAPIAPI.basePath + path
        let parameters = permissionResource?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PermissionResource>.Type = JSAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
