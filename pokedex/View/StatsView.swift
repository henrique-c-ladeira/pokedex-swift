//
//  StatsView.swift
//  pokedex
//
//  Created by Henrique Ladeira on 22/12/21.
//

import SwiftUI

struct StatsView: View {
    var id: Int
    var pokemon: PokemonDetail?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            ForEach((self.pokemon?.stats) ?? [], id: \.stat.name) { stat in
                LazyHStack {
                    Text(stat.stat.name.capitalized)
                    Text(String(stat.base_stat))
                }
            }
        }
    }
}

struct StatsView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonView(id: 69)
    }
}
