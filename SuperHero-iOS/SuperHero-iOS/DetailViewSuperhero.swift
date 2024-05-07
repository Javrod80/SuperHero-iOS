//
//  DetailViewSuperhero.swift
//  SuperHero-iOS
//
//  Created by Mañanas on 11/4/24.
//

import UIKit

class DetailViewSuperhero: UIViewController {
    
    
  
    var filteredHeroes : [Hero] = []
    var hero: Hero? = nil
    var heroIndex:Int = -1
    
   
    @IBOutlet var imageSuperHero: UIImageView!
    
   
    @IBOutlet var inteligeneProgressView: UIProgressView!
    
    @IBOutlet var strenghtProgress: UIProgressView!
    
    @IBOutlet var speedProgress: UIProgressView!
    
    @IBOutlet var durabilityProgress: UIProgressView!
    
    
    @IBOutlet var powerProgress: UIProgressView!
    
    @IBOutlet var combatProgress: UIProgressView!

    
    @IBOutlet var heroName: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = hero?.name
        
        
      

        imageSuperHero.loadImage(fromURL: hero!.image.url)
        inteligeneProgressView.progress = (Float((hero?.powerstats.intelligence)!) ?? 0.0) / 100.0
        durabilityProgress.progress = (Float((hero?.powerstats.durability)!) ?? 0.0) / 100.0
        powerProgress.progress = (Float((hero?.powerstats.power)!) ?? 0.0) / 100.0
        strenghtProgress.progress = (Float((hero?.powerstats.strength)!) ?? 0.0) / 100.0
        speedProgress.progress = (Float((hero?.powerstats.speed)!) ?? 0.0) / 100.0
        combatProgress.progress = (Float((hero?.powerstats.combat)!) ?? 0.0) / 100.0
        heroName.text = hero?.name
        
        
        
        
        
        
        
        
        
    }
  
      
    
    
  
    
  
    
    
    
    
   
    
    
    
    
    
    
    
    
    
   /* @IBAction func backButton(_ sender: UIBarButtonItem) {
       
    }
     
     
     
     
     @IBAction func nextButton(_ sender: UIBarButtonItem) {
     Task { @MainActor in
     heroIndex += 1
     
     if try await (heroIndex == SuperHeroProvider.getSuperheroFromApi(query: "").count) {
     heroIndex = 0
     }
         hero = try await SuperHeroProvider.getSuperheroFromApi(query: "")[heroIndex]
     
     }
     }*/
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
