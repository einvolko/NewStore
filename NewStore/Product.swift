
import Foundation


struct Pizza: Codable {
    
    let name:String
    let description:String
    let cost:Int
    let image:String
    let price: Price
    let fullDescription:String
    
    struct Price: Codable{
            
            let small: Int?
            let medium: Int?
            let large: Int?
}

    
}

struct Rolls: Codable {
    
    let name:String
    let description:String
    let cost:Int
    let image:String
    let quantity:Int
    let fullDescription:String
}
