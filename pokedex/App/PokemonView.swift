//
//  PokemonView.swift
//  pokedex
//
//  Created by Henrique Ladeira on 19/12/21.
//

import SwiftUI

struct PokemonView: View {
    var id: Int
    @State var details: PokemonDetail?
    
    var body: some View {
        TabView {
            PokemonSummaryView(id: self.id, pokemon: self.details)
                .tabItem {
                    Image(systemName: "list.star")
                    Text("Summary")
                }
            StatsView(id: self.id, pokemon: self.details)
                .tabItem {
                    Image(systemName: "chart.xyaxis.line")
                    Text("Stats")
                }
        }.onAppear {
            FetchPokemonApi().getPokemonDetail(id: self.id){ pokemon in
                self.details = pokemon
            }
        }
    }
}

struct PokemonView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonView(id: 147)
    }
}
