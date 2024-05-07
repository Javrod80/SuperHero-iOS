//
//  SuperHeroResponse.swift
//  SuperHero-iOS
//
//  Created by Mañanas on 11/4/24.
//

import Foundation

struct ResponseData: Codable {
    let response: String
    //let resultsFor: String
    let results: [Hero]

   
    
}

struct Hero : Codable {
    
    let id: String
    let name: String
    let image: Image
    let powerstats: Powerstats
}

struct Image: Codable {
    let url: String

}
    
    


struct Powerstats: Codable {
    
    let intelligence: String
    let strength: String
    let speed: String
    let durability: String
    let power: String
    let combat: String
    
}

class SuperHeroProvider {
    
    static func getSuperheroFromApi(query: String) async throws -> [Hero] {
        

            do {
                let url = URL(string: "https://superheroapi.com/api/7252591128153666/search/\(query)")!
                let (data,_) = try await URLSession.shared.data(from: url)
                let decoded = try JSONDecoder().decode(ResponseData.self, from: data)
                return decoded.results
            } catch {
                print(error)
            }
        return []
        
        
            
        }
    
}


