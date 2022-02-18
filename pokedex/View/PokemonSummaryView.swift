//
//  PokemonDetailView.swift
//  pokedex
//
//  Created by Henrique Ladeira on 13/12/21.
//

import SwiftUI

struct PokemonSummaryView: View {
    var id: Int
    var pokemon: PokemonDetail?
    
    var body: some View {
        VStack {
            Text(self.pokemon?.name?.capitalized ?? "Pokemon")
                .font(.largeTitle)
            PokemonAsyncImageView(id: self.id)
            LazyHStack {
                Text("Type")
                    .font(.title)
                    .padding()
                ForEach((self.pokemon?.types) ?? []) { type in
                    VStack {
                        TypeToIconView(type: type.type.name).frame(width: 30, height: 30)
                        Text(type.type.name.capitalized).font(.caption)
                    }
                }
            }
        }
    }
}

struct PokemonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonView(id: 147).preferredColorScheme(.dark)
    }
}
