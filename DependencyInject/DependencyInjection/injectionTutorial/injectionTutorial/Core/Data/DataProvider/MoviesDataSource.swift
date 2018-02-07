/*
    MoviesDataSource: This class will make the request to the MoviesAPI, get the data from the resposne and store the
                      data in a factory
 */

import Foundation

class MoviesDataSource: MoviesDataProvider {
    
    // Need a network Provider to make a rest call
    public var networkingProvider: NetworkingProvider
    
    // Need a moviesFactory to get array of json back from response
    public var moviesFactory: MoviesFactoryProvider
    
    // Build the URLString
    private var urlString: String? {
        get {
            
            // Construct the URL base String
            var urlComponets = URLComponents(string: DataSourceConstants.TMDBBaseURL)
            urlComponets?.path = DataSourceConstants.MoviesURL
            
            // Build the QueryRequest
            let querry = URLQueryItem(name: DataSourceConstants.APIParameterKey, value: DataSourceConstants.APIParameterValue)
            urlComponets?.queryItems = [querry]
            
            return urlComponets?.string
        }
    }
    
    // Inject the networkingProvider and MoviesFacotry into the MoviesDataSource
    init(withNetworkingProvider networking: NetworkingProvider = AFNetworkConnector(), andFactory factory: MoviesFactoryProvider = JSONMoviesFactory()) {
        
        self.networkingProvider = networking
        self.moviesFactory = factory
    }
    
    // Get the Movies
    // TODO: (1) Get the URL
    //       (2) Make the rest Call
    //          (3) Get the response
    //          (4) Parse the Response
    func getMovies(onCompleted: (([MovieItem]) -> ())?) {
        
        // URLString is important lets guard against it being nil
        guard let urlString = self.urlString
            
        else {
            onCompleted?([])
            return
        }
        
        // If UrlString is not nil use the NetworkProvider to make a rest call
        self.networkingProvider.restCall(urlString: urlString) { (responseObject) in
            guard let responseData = responseObject,
            let jsonObject = try? JSONSerialization.data(withJSONObject: responseData, options: JSONSerialization.WritingOptions.prettyPrinted)
                else {
                    onCompleted?([])
                    return
            }
            let movies = self.moviesFactory.movieItems(withJSON: jsonObject)
            onCompleted?(movies)
        }
    }
    
}
