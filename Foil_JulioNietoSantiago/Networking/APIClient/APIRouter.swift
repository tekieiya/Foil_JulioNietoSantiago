import Alamofire

enum APIRouter: URLRequestConvertible {
    
    case articles(mostPopular: String)
    
    // MARK: - HTTPMethod
    private var method: HTTPMethod {
        switch self {
        case .articles:
            return .get
        }
    }
    
    // MARK: - Path
    private var path: String {
        switch self {
        case .articles(let parameter):
            return parameter+Constants.ProductionServer.apiKey
        }
    }
    
    // MARK: - Parameters
    private var parameters: Parameters? {
        switch self {
        case .articles:
            return nil
        }
    }
    
    // MARK: - URLRequestConvertible
    func asURLRequest() throws -> URLRequest {
        let url = try Constants.ProductionServer.baseURL.asURL()
                
        let urlWithPath = url.appendingPathComponent(path).absoluteString.removingPercentEncoding
        var urlRequest = URLRequest(url: URL(string: urlWithPath!)!)
        
        // HTTP Method
        urlRequest.httpMethod = method.rawValue
        
        // Common Headers
        urlRequest.setValue(ContentType.json.rawValue, forHTTPHeaderField: HTTPHeaderField.acceptType.rawValue)
        urlRequest.setValue(ContentType.json.rawValue, forHTTPHeaderField: HTTPHeaderField.contentType.rawValue)
        
        // Parameters
        if let parameters = parameters {
            do {
                urlRequest.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: [])
            } catch {
                throw AFError.parameterEncodingFailed(reason: .jsonEncodingFailed(error: error))
            }
        }
        
        return urlRequest
    }
}

