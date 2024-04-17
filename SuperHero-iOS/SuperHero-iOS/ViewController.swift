//
//  ViewController.swift
//  SuperHero-iOS
//
//  Created by Mañanas on 11/4/24.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDataSource , UISearchBarDelegate, UICollectionViewDelegate {
    
    
    
    var filteredHeroes: [Hero] = []
    var searchHeroes : [Hero] = []
    
    
    
    
    @IBOutlet var coleccionSuperHero: UICollectionView!
    
    @IBOutlet var searchbar: UISearchBar!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchbar.delegate = self
        coleccionSuperHero.delegate = self
        coleccionSuperHero.dataSource = self
        self.navigationItem.title = "Superheroes"
        
        
         
        
      
        
        
       /* Task {
            print("Inicio")
            filteredHeroes = try await SuperHeroProvider.getSuperheroFromApi(name: <#String#>)
            print(filteredHeroes.count)
            DispatchQueue.main.async {
                self.coleccionSuperHero.reloadData()
            }
            print("Fin")
        }*/
        Task.init {
            await fetchSuperheroes()
        }
        
         
         }
    
    
    
    
    
    
  
    
    
    
    
   
        
       
        
        
        
        
        
       
            
            

       
       
        
  
        
        
    
    
    
        
        
        
        
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            
            return filteredHeroes.count
            
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HeroCell", for: indexPath) as! SuperheroViewCell
            
            let hero = filteredHeroes[indexPath.item]
            
            
            
            cell.heroNameLabel.text = hero.name
            cell.imageHeroView.loadImage(fromURL: hero.image.url)
            
            return cell
            
            
            
            
            
            
        }
      func fetchSuperheroes() async -> [Hero] {
            
            
            do {
                filteredHeroes = try await SuperHeroProvider.getSuperheroFromApi(query: "a")
                print(filteredHeroes.count)
                
                
                DispatchQueue.main.async {
                    self.coleccionSuperHero.reloadData()
                }
            } catch {
                print("Error al obtener superhéroes: \(error)")
            }
          print ("fin")
          
          return filteredHeroes
          
            
        }
 
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    

