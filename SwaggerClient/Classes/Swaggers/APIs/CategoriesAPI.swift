//
// CategoriesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



public class CategoriesAPI: APIBase {
    /**
     Create a new category
     
     - parameter category: (body) The category to create (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func createCategoryUsingPOST(category category: CategoryResource? = nil, completion: ((data: CategoryResource?, error: ErrorType?) -> Void)) {
        createCategoryUsingPOSTWithRequestBuilder(category: category).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create a new category
     - POST /categories
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     - examples: [{contentType=application/json, example={
  "template" : "aeiou",
  "name" : "aeiou",
  "active" : false,
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  },
  "id" : "aeiou"
}}]
     
     - parameter category: (body) The category to create (optional)

     - returns: RequestBuilder<CategoryResource> 
     */
    public class func createCategoryUsingPOSTWithRequestBuilder(category category: CategoryResource? = nil) -> RequestBuilder<CategoryResource> {
        let path = "/categories"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = category?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<CategoryResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Create a category template
     
     - parameter template: (body) The template to create (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func createTemplateUsingPOST2(template template: TemplateResource? = nil, completion: ((data: TemplateResource?, error: ErrorType?) -> Void)) {
        createTemplateUsingPOST2WithRequestBuilder(template: template).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Create a category template
     - POST /categories/templates
     - Templates define a type of category and the properties they have
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     - examples: [{contentType=application/json, example={
  "name" : "aeiou",
  "created_date" : 123456789,
  "id" : "aeiou",
  "updated_date" : 123456789,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "required" : false
  } ]
}}]
     
     - parameter template: (body) The template to create (optional)

     - returns: RequestBuilder<TemplateResource> 
     */
    public class func createTemplateUsingPOST2WithRequestBuilder(template template: TemplateResource? = nil) -> RequestBuilder<TemplateResource> {
        let path = "/categories/templates"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = template?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<TemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete an existing category
     
     - parameter id: (path) The id of the category to be deleted 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteCategoryUsingDELETE(id id: String, completion: ((error: ErrorType?) -> Void)) {
        deleteCategoryUsingDELETEWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete an existing category
     - DELETE /categories/{id}
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     
     - parameter id: (path) The id of the category to be deleted 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteCategoryUsingDELETEWithRequestBuilder(id id: String) -> RequestBuilder<Void> {
        var path = "/categories/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete a category template
     
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) The value needed to delete used templates (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteTemplateUsingDELETE1(id id: String, cascade: String? = nil, completion: ((error: ErrorType?) -> Void)) {
        deleteTemplateUsingDELETE1WithRequestBuilder(id: id, cascade: cascade).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Delete a category template
     - DELETE /categories/templates/{id}
     - If cascade = 'detach', it will force delete the template even if it's attached to other objects
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     
     - parameter id: (path) The id of the template 
     - parameter cascade: (query) The value needed to delete used templates (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func deleteTemplateUsingDELETE1WithRequestBuilder(id id: String, cascade: String? = nil) -> RequestBuilder<Void> {
        var path = "/categories/templates/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "cascade": cascade
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     List and search category templates
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getArticleTemplatesUsingGET1(size size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: ((data: PageResourceTemplateResource?, error: ErrorType?) -> Void)) {
        getArticleTemplatesUsingGET1WithRequestBuilder(size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     List and search category templates
     - GET /categories/templates
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
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
    "name" : "aeiou",
    "created_date" : 123456789,
    "id" : "aeiou",
    "updated_date" : 123456789,
    "properties" : [ {
      "name" : "aeiou",
      "type" : "aeiou",
      "required" : false
    } ]
  } ],
  "first" : true
}}]
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<PageResourceTemplateResource> 
     */
    public class func getArticleTemplatesUsingGET1WithRequestBuilder(size size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceTemplateResource> {
        let path = "/categories/templates"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "order": order
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageResourceTemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     List and search categories with optional filters
     
     - parameter filterSearch: (query) Filter for categories whose names begin with provided string (optional)
     - parameter filterActive: (query) Filter for categories that are specifically active or inactive (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getCategoriesUsingGET1(filterSearch filterSearch: String? = nil, filterActive: Bool? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil, completion: ((data: PageResourceCategoryResource?, error: ErrorType?) -> Void)) {
        getCategoriesUsingGET1WithRequestBuilder(filterSearch: filterSearch, filterActive: filterActive, size: size, page: page, order: order).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     List and search categories with optional filters
     - GET /categories
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
    "template" : "aeiou",
    "name" : "aeiou",
    "active" : false,
    "additional_properties" : {
      "key" : {
        "type" : "aeiou"
      }
    },
    "id" : "aeiou"
  } ],
  "first" : true
}}]
     
     - parameter filterSearch: (query) Filter for categories whose names begin with provided string (optional)
     - parameter filterActive: (query) Filter for categories that are specifically active or inactive (optional)
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter order: (query) A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)

     - returns: RequestBuilder<PageResourceCategoryResource> 
     */
    public class func getCategoriesUsingGET1WithRequestBuilder(filterSearch filterSearch: String? = nil, filterActive: Bool? = nil, size: Int32? = nil, page: Int32? = nil, order: String? = nil) -> RequestBuilder<PageResourceCategoryResource> {
        let path = "/categories"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "filter_search": filterSearch,
            "filter_active": filterActive,
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON(),
            "order": order
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageResourceCategoryResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a single category
     
     - parameter id: (path) The id of the category to retrieve 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getCategoryUsingGET1(id id: String, completion: ((data: CategoryResource?, error: ErrorType?) -> Void)) {
        getCategoryUsingGET1WithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a single category
     - GET /categories/{id}
     - examples: [{contentType=application/json, example={
  "template" : "aeiou",
  "name" : "aeiou",
  "active" : false,
  "additional_properties" : {
    "key" : {
      "type" : "aeiou"
    }
  },
  "id" : "aeiou"
}}]
     
     - parameter id: (path) The id of the category to retrieve 

     - returns: RequestBuilder<CategoryResource> 
     */
    public class func getCategoryUsingGET1WithRequestBuilder(id id: String) -> RequestBuilder<CategoryResource> {
        var path = "/categories/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<CategoryResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     List all trivia tags in the system
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getTagsUsingGET(size size: Int32? = nil, page: Int32? = nil, completion: ((data: PageResourcestring?, error: ErrorType?) -> Void)) {
        getTagsUsingGETWithRequestBuilder(size: size, page: page).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     List all trivia tags in the system
     - GET /tags
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
  "content" : [ "aeiou" ],
  "first" : true
}}]
     
     - parameter size: (query) The number of objects returned per page (optional, default to 25)
     - parameter page: (query) The number of the page returned, starting with 1 (optional, default to 1)

     - returns: RequestBuilder<PageResourcestring> 
     */
    public class func getTagsUsingGETWithRequestBuilder(size size: Int32? = nil, page: Int32? = nil) -> RequestBuilder<PageResourcestring> {
        let path = "/tags"
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "size": size?.encodeToJSON(),
            "page": page?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<PageResourcestring>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Get a single category template
     
     - parameter id: (path) The id of the template 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getTemplateUsingGET1(id id: String, completion: ((data: TemplateResource?, error: ErrorType?) -> Void)) {
        getTemplateUsingGET1WithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }


    /**
     Get a single category template
     - GET /categories/templates/{id}
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     - examples: [{contentType=application/json, example={
  "name" : "aeiou",
  "created_date" : 123456789,
  "id" : "aeiou",
  "updated_date" : 123456789,
  "properties" : [ {
    "name" : "aeiou",
    "type" : "aeiou",
    "required" : false
  } ]
}}]
     
     - parameter id: (path) The id of the template 

     - returns: RequestBuilder<TemplateResource> 
     */
    public class func getTemplateUsingGET1WithRequestBuilder(id id: String) -> RequestBuilder<TemplateResource> {
        var path = "/categories/templates/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<TemplateResource>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update an existing category
     
     - parameter id: (path) The id of the category 
     - parameter category: (body) The category to update (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateCategoryUsingPUT1(id id: String, category: CategoryResource? = nil, completion: ((error: ErrorType?) -> Void)) {
        updateCategoryUsingPUT1WithRequestBuilder(id: id, category: category).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update an existing category
     - PUT /categories/{id}
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     
     - parameter id: (path) The id of the category 
     - parameter category: (body) The category to update (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func updateCategoryUsingPUT1WithRequestBuilder(id id: String, category: CategoryResource? = nil) -> RequestBuilder<Void> {
        var path = "/categories/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = category?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Update a category template
     
     - parameter id: (path) The id of the template 
     - parameter template: (body) The updated template information (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateTemplateUsingPUT2(id id: String, template: TemplateResource? = nil, completion: ((error: ErrorType?) -> Void)) {
        updateTemplateUsingPUT2WithRequestBuilder(id: id, template: template).execute { (response, error) -> Void in
            completion(error: error);
        }
    }


    /**
     Update a category template
     - PUT /categories/templates/{id}
     - OAuth:
       - type: oauth2
       - name: knetik_oauth
     
     - parameter id: (path) The id of the template 
     - parameter template: (body) The updated template information (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func updateTemplateUsingPUT2WithRequestBuilder(id id: String, template: TemplateResource? = nil) -> RequestBuilder<Void> {
        var path = "/categories/templates/{id}"
        path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = template?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}