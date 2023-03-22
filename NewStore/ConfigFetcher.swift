

import Foundation

class ConfigFetcher{
    
    let configURL = URL(string: "https://raw.githubusercontent.com/einvolko/NewStore/main/Source/PizzaSource.json")!
    
    func fetchConfig (completion : @escaping ((Error? , AppConfig?) -> Void) ){
        
        let request = URLRequest(url: configURL)
        
        let task = URLSession.shared.dataTask(with: request,
                                              completionHandler: {(complitionHAndlerData, complitionHandlerResponse, copmlitionHandlerError) in
        if let error = copmlitionHandlerError{
                print(error)
                completion(error, nil)
            }
            
            guard let data = complitionHAndlerData else {return}
            let JSONString = String(data: data, encoding: .utf8)
            //print(JSONString)
            do{
                let storage = try JSONDecoder().decode(AppConfig.self, from: data)
                completion(nil, storage)
            }
            
            catch{
                print(error)
                completion(error, nil)
            }
        })
        
        task.resume()
        
        
        
    }
}
