//
//  PokemonList.swift
//  pokedex
//
//  Created by Henrique Ladeira on 12/12/21.
//

import SwiftUI

struct PokemonList: View {
    @State var pokemons: [Pokemon] = []
    
    var body: some View {
        List(pokemons) { pokemon in
            NavigationLink(destination: PokemonView(id: pokemon.id)) {
                HStack{
                    AsyncImage(url: URL(string: pokemon.imageUrl))
                        .scaledToFit()
                        .frame(maxHeight: 80)
                    Spacer()
                    Text(pokemon.name)
                        .bold()
                        .font(.headline)
                        .foregroundColor(Color.white)
                        .textCase(.uppercase)
                    Spacer()
                }
                .padding(10)
                .background(Color.white.opacity(0.3))
                .border(Color.gray, width: 3)
            }
            .listRowBackground(Color.clear)
        }
        .onAppear {
            FetchPokemonApi().getPokemonList { (pokemons) in
                self.pokemons = pokemons
            }
        }
        .listStyle(PlainListStyle())
        
    }
}

struct PokemonList_Previews: PreviewProvider {
    static var previews: some View {
        PokemonList().preferredColorScheme(.dark)
    }
}
